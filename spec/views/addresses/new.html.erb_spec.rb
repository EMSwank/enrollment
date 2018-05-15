require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      :description => "MyText",
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => 1
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "textarea[name=?]", "address[description]"

      assert_select "input[name=?]", "address[street]"

      assert_select "input[name=?]", "address[city]"

      assert_select "input[name=?]", "address[state]"

      assert_select "input[name=?]", "address[zip_code]"
    end
  end
end
