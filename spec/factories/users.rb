FactoryGirl.define do
  factory :user do
    name 'Test User'
    email 'example@example.com'
    password 'pleasedude'
    password_confirmation 'pleasedude'
  end
end
