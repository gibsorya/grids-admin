require 'rails_helper'

RSpec.describe Role, type: :model do

  it "should have many assignments" do
    a = Role.reflect_on_association(:assignments)
    expect(a.macro).to eq(:has_many)
  end

  it "should have many users" do
    u = Role.reflect_on_association(:users)
    expect(u.macro).to eq(:has_many)
  end
  
end
