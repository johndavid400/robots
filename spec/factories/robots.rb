# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :robot do
    name "MyString"
    user_id 1
    type "MyString"
    featured false
  end
end
