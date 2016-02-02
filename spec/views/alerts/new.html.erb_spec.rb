require 'rails_helper'

RSpec.describe "alerts/new", type: :view do
  before(:each) do
    assign(:alert, Alert.new(
      :event => nil,
      :user => nil
    ))
  end

  it "renders new alert form" do
    render

    assert_select "form[action=?][method=?]", alerts_path, "post" do

      assert_select "input#alert_event_id[name=?]", "alert[event_id]"

      assert_select "input#alert_user_id[name=?]", "alert[user_id]"
    end
  end
end
