class Subject < ApplicationRecord
  enum department: [ :systems, :electronics, :electric, :civil, :mechanics, :basic_sciences ]
  belongs_to :specialty

  validates :name, :specialty, presence: true
end
