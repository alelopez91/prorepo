FactoryGirl.define do
  factory :specialty do
    trait :without_grade_level do
      name 'specialty name'
    end

    trait :without_name do
      grade_level 'Some grade'
    end

    trait :with_required_attributes do
      name 'specialty name'
      grade_level 'Some grade'
    end
  end
end
