require 'rails_helper'

RSpec.describe "subscriptions/new", type: :view do
  before(:each) do
    assign(:subscription, Subscription.new(
      :subscription_name => "MyString",
      :user => nil
    ))
  end

  it "renders new subscription form" do
    render

    assert_select "form[action=?][method=?]", subscriptions_path, "post" do

      assert_select "input#subscription_subscription_name[name=?]", "subscription[subscription_name]"

      assert_select "input#subscription_user_id[name=?]", "subscription[user_id]"
    end
  end
end
