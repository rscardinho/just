FactoryGirl.define do
  factory :user do
    email    "user@user.com"
    password "user"
  end

  factory :admin do
    email    "admin@example.com"
    password "password"
  end
end