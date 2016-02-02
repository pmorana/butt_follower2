require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :subscription => nil,
        :event_name => "Event Name"
      ),
      Event.create!(
        :subscription => nil,
        :event_name => "Event Name"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Event Name".to_s, :count => 2
  end
end
