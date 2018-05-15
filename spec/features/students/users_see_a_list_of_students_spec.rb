require 'rails_helper'

describe "A user visits /students" do
  it "displays a list of students" do
    student_1 = Student.create(id: 1, name: "Foo")
    student_2 = Student.create(id: 2, name: "Bar")

    visit students_path

    expect(page).to have_content(student_1)
    expect(page).to have_content(student_2)
  end
  
end
