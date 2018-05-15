require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :description => "MyText",
        :street => "Street",
        :city => "City",
        :state => "State",
        :zip_code => 2
      ),
      Address.create!(
        :description => "MyText",
        :street => "Street",
        :city => "City",
        :state => "State",
        :zip_code => 2
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
