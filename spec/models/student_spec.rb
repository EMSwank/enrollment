require 'rails_helper'

describe Student, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }

  end
  
  describe "relationships" do
    it "has many addresses" do
      student = Student.new(name: "Foo")
      expect(student).to respond_to(:addresses)
    end
    
  end
  
end
