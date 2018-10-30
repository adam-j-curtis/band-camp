require 'factory_bot'

FactoryBot.define do
  factory :user do
    first_name {'June'}
    last_name {'Vega'}
    sequence(:email) {|n| "user#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
