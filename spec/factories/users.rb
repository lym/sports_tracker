FactoryGirl.define do
  factory :user do
    name 'Test User'
    email 'example@example.com'
    passsword 'please'
    password_confirmation 'please'
  end
end
