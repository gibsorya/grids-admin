require 'rails_helper'

RSpec.describe User, type: :model do

  subject { described_class.new(
    username: "gibsorya",
    name: "Ryan Gibson",
    email: "gibsorya@gmail.com",
    password: "foobar",
    password_confirmation: "foobar"
  )}

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a username" do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password_digest = nil
    expect(subject).to_not be_valid
  end
end
