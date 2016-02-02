require 'rails_helper'

RSpec.describe "alerts/edit", type: :view do
  before(:each) do
    @alert = assign(:alert, Alert.create!(
      :event => nil,
      :user => nil
    ))
  end

  it "renders the edit alert form" do
    render

    assert_select "form[action=?][method=?]", alert_path(@alert), "post" do

      assert_select "input#alert_event_id[name=?]", "alert[event_id]"

      assert_select "input#alert_user_id[name=?]", "alert[user_id]"
    end
  end
end
