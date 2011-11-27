# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    title "MyString"
    content "MyText"
    featured false
    user_id 1
  end
end
