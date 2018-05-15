require 'rails_helper'

describe "A user visits /students/new" do
  it "and creates a student by filling out a form and clicking submit" do
    visit new_student_path

    fill_in "student[name]",	with: "Foobar Baz"

    within ".main" do
      click_on "Create"
    end

    expect(current_path).to eq("/students/#{Student.last.id}")
    expect(page).to have_content('Foobar Baz')
    expect(Student.count).to eq(1)
  end
  
end
