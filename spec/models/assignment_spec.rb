require 'rails_helper'

RSpec.describe Assignment, type: :model do

  it "should belong to user" do
    u = Assignment.reflect_on_association(:user)
    expect(u.macro).to eq(:belongs_to)
  end

  it "should belong to role" do
    r = Assignment.reflect_on_association(:role)
    expect(r.macro).to eq(:belongs_to)
  end
end
