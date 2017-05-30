class Project < ApplicationRecord
  belongs_to :subject

  serialize :authors
  enum revision_state: [ :pending, :approved ]
  has_attached_file :attachment, preserve_files: true

  validates_attachment_content_type :attachment, content_type: ['application/pdf']
  validates_attachment_file_name :attachment, :matches => [/pdf\Z/]
  validates :title, :abstract, :subject, :attachment, presence: true
  validates :authors, length: { minimum: 1}

  def specialty
    subject.specialty
  end
end
