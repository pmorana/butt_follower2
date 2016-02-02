require 'rails_helper'

RSpec.describe "alerts/index", type: :view do
  before(:each) do
    assign(:alerts, [
      Alert.create!(
        :event => nil,
        :user => nil
      ),
      Alert.create!(
        :event => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of alerts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
