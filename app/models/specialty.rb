class Specialty < ApplicationRecord
  enum grade_level: [ :grade, :postgrade, :technicature, :event ]
  has_many :subjects

  validates :name, :grade_level, presence: true


end
