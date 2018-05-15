require 'rails_helper'

describe "A user visits /students" do
  it "displays a list of students" do
    student_1 = Student.create(id: 1, name: "Foo")
    student_2 = Student.create(id: 2, name: "Bar")

    visit students_path

    expect(page).to have_content("Foo")
    expect(page).to have_content("Bar")
  end
  
  it "takes you to the show page when you click on an individual student" do
    student = Student.create(id: 3, name: "Baz")

    visit students_path

    within ".main" do
    click_on "Baz"
    end

    expect(current_path).to eq("/students/#{student.id}")
  end
  
end
