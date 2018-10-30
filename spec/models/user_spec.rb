require 'rails_helper'
require_relative "../../app/models/user.rb"

RSpec.describe User, :type => :model do

  # fill_in 'Password confirmation', with: 'password'

  it "is not valid without a First Name" do
    test_user = User.create(first_name: nil, last_name: "Vega", school_name: "Eldridge Academy", city: "Buenos Aires", email: "vegas.rosadas@example.com", password: "password")
    expect(test_user).to_not be_valid
    expect(test_user.errors.messages).to eq(:first_name=>["can't be blank"])
  end

  it "is not valid without a Last Name" do
    test_user = User.create(first_name: "June", last_name: nil, school_name: "Eldridge Academy", city: "Buenos Aires", email: "vegas.rosadas@example.com", password: "password")
    expect(test_user).to_not be_valid
    expect(test_user.errors.messages).to eq(:last_name=>["can't be blank"])
  end

  it "is not valid without a School Name" do
    test_user = User.create(first_name: "June", last_name: "Vega", school_name: nil, city: "Buenos Aires", email: "vegas.rosadas@example.com", password: "password")
    expect(test_user).to_not be_valid
    expect(test_user.errors.messages).to eq(:school_name=>["can't be blank"])
  end

  it "is not valid without a City" do
    test_user = User.create(first_name: "June", last_name: "Vega", school_name: "Eldridge Academy", city: nil, email: "vegas.rosadas@example.com", password: "password")
    expect(test_user).to_not be_valid
    expect(test_user.errors.messages).to eq(:city=>["can't be blank"])
  end

  it "is not valid without an Email" do
    test_user = User.create(first_name: "June", last_name: "Vega", school_name: "Eldridge Academy", city: "Buenos Aires", email: nil, password: "password")
    expect(test_user).to_not be_valid
    expect(test_user.errors.messages).to eq(:email=>["can't be blank"])
  end

  it "is not valid without a Password" do
    test_user = User.create(first_name: "June", last_name: "Vega", school_name: "Eldridge Academy", city: "Buenos Aires", email: "vegas.rosadas@example.com", password: nil)
    expect(test_user).to_not be_valid
    expect(test_user.errors.messages).to eq(:password=>["can't be blank"])
  end
end
