class Project < ApplicationRecord
  belongs_to :subject

  serialize :authors
  enum revision_state: [ :pending, :approved ]

  validates :title, :abstract, :subject, presence: true
  validates :authors, length: { minimum: 1}
end
