require 'rails_helper'

describe "a user visits the edit page to edit a student," do
  describe "fills out the form and clicks submit" do
    it "redirects me to the student show page and shows the student's new name" do
      student = Student.create(id: 1, name: "Foobar Baz")

      visit edit_student_path(student)

      fill_in "student[name]",	with: "Zab Raboof"
      click_on "Update"

      expect(current_path).to eq("/students/#{Student.last.id}")
      expect(page).to have_content("Zab Raboof")
      expect(page).to_not have_content("Foobar Baz")
    end
    
  end
  
end
