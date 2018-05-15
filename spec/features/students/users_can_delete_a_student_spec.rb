require 'rails_helper'

describe "User deletes a student" do
  it "deletes a student when you click delete" do
    student = Student.create(id: 1, name: "Foo")

    visit students_path
    click_on "Delete"

    expect(page).to have_content("Student was successfully destroyed.")
    expect(Student.count).to eq(0)
  end
  
end
