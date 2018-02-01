class Project < ApplicationRecord
  belongs_to :subject

  serialize :authors

  enum revision_state: [ :pending, :approved ]

  has_attached_file :attachment, preserve_files: false

  validates_attachment_content_type :attachment, content_type: ['application/pdf']
  validates_attachment_file_name :attachment, :matches => [/pdf\Z/]
  validates :title, :abstract, :subject, :attachment, :email, presence: true
  validates :authors, length: { minimum: 1}
  validates :revision_state, presence: {message: I18n.t('errors.messages.input_revision_state') }, if: "reason.present?"
  validates :reason, presence: {message: I18n.t('errors.messages.input_reason') }, if: "revision_state == \"pending\""

  before_create :assign_auth_token, on: :create

  scope :pending,  -> { where(revision_state: :pending) }
  scope :approved, -> { where(revision_state: :approved) }

  def specialty
    subject.specialty
  end

  private
  def assign_auth_token
    self.auth_token ||= SecureRandom.uuid
  end
end
