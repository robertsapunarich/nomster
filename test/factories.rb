FactoryGirl.define do
  
  factory :user do
    sequence :email do |n|
      "rjs#{n}@gmail.com"
    end
    password "password"
    password_confirmation "password"
  end

  factory :place do
    name "ergle nderple gerp"
    description "even the angle iron has ears"
    address "25471 Arctic Ocean Drive, Lake Forest, CA 92630"
    association :user
  end

  factory :comment do
    message "lol"
    rating "1_star"
    association :user
    association :place
  end

end
