class Specialty < ApplicationRecord
  validates :name, :grade_level, presence: true
end
