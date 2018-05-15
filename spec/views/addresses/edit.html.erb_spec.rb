require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :description => "MyText",
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => 1
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "textarea[name=?]", "address[description]"

      assert_select "input[name=?]", "address[street]"

      assert_select "input[name=?]", "address[city]"

      assert_select "input[name=?]", "address[state]"

      assert_select "input[name=?]", "address[zip_code]"
    end
  end
end
