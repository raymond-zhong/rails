require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :name => "Name",
        :location => "Location",
        :host => "Host",
        :action => "Action"
      ),
      Event.create!(
        :name => "Name",
        :location => "Location",
        :host => "Host",
        :action => "Action"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Host".to_s, :count => 2
    assert_select "tr>td", :text => "Action".to_s, :count => 2
  end
end
