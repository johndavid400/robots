# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    type "MyString"
    sensors "MyString"
    build_time "MyString"
    website "MyString"
    cost "MyString"
    weight 1
    microcontroller "MyString"
    power_source "MyString"
    motors "MyString"
    drive_type "MyString"
    comments "MyText"
    user_id 1
  end
end
