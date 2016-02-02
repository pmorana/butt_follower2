require 'rails_helper'

RSpec.describe "alerts/show", type: :view do
  before(:each) do
    @alert = assign(:alert, Alert.create!(
      :event => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
