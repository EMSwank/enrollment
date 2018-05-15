require 'rails_helper'

describe "User visits /students/:id" do
  it "and sees the name of a student" do
    student = Student.create(id: 1, name: "Foo")

    visit student_path(student.id)

    expect(page).to have_content("Foo")
  end
  
end
