require 'rails_helper'

RSpec.describe Person, :type => :model do

  let(:person) { FactoryGirl.create(:person) }

  it "is valid with valid attributes" do
    expect(Person.new).to be_valid
  end

  it "is not valid without email" do
    person.email_address = nil
    expect(person).to be_invalid
  end

  it "is not valid without name" do
    person.name = nil
    expect(person).to be_invalid
  end

  it "is not valid if email exists" do
    person_two = Person.new(name: person.name, email_address: person.email_address)
    expect(person_two).to be_invalid
  end
end