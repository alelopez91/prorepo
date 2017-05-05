require 'rails_helper'

describe Specialty, type: :model do
  context "When testing validations" do
    it "fails when creating a specialty without name" do
      specialty = build(:specialty, :without_name)
      expect(specialty).to_not be_valid
    end

    it "fails when creating a specialty without grade level" do
      specialty = build(:specialty, :without_grade_level)
      expect(specialty).to_not be_valid
    end

    it "success when creating a specialty with name and grade level" do
      specialty = build(:specialty, :with_required_attributes)
      expect(specialty).to be_valid
    end
  end
end
