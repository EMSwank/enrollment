require 'rails_helper'

RSpec.describe Address, type: :model do
  describe "validations" do
    Student.create(id: 5, name: "foo")
    it { should validate_presence_of(:street) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:zip_code) }
  end

  # describe "relationships" do
  # it "has many addresses" do
  #   student = Student.new(name: "Foo")
  #   expect(student).to respond_to(:addresses)
  # end
    
  # end

end
