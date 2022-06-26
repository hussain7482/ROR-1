require 'rails_helper'

RSpec.describe User, type: :model do
  it "should create user if all are correct" do
  user=User.create(first_name: "mohammad",last_name: "hussain",email: 
  "tousifh111@gmail.com")
    
    expect(user.first_name).to eq("mohammad")
    expect(user.last_name).to eq("hussain")
    expect(user.email).to eq("tousifh111@gmail.com")
   end
   
   it "should be able to count" do
   user=User.create(first_name: "mohammad",last_name: "hussain",email: 
   "tousifh111@gmail.com") 
    expect(User.count).to eq(1)
   end
   
   it "should return error when email is blank" do
   user=User.new(first_name: "mohammad",last_name: "hussain",email: "")
    expect(user).to_not be_valid
   end 
end
