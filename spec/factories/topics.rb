FactoryGirl.define do
  factory :topic do
    body "MyString"
    user_id 1
    event_id 1
    user nil
    event nil
  end
end
