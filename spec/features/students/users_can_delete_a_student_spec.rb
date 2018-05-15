require 'rails_helper'

describe "User deletes a student" do
  it "deletes a student when you click delete" do
    student = Student.create(id: 1, name: "Foo")

    visit students_path

    click_on "Delete"

    expect(page).to have_content("Foo was successfully deleted!")
  end
  
end
