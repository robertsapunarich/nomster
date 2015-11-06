FactoryGirl.define do
  
  factory :user do
    email "robertsapunarich_test@gmail.com"
    password "password"
  end

  factory :place do
    name "ergle nderple gerp"
    description "even the angle iron has ears"
    address "25471 Arctic Ocean Drive, Lake Forest, CA 92630"
  end

  factory :comment do
    message "lol"
    rating "1_star"
  end

end
