# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shared_resource do
    path "MyString"
    directory false
    read false
    write false
  end
end
