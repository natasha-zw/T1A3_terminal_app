require 'rspec/autorun'
require_relative '../classes/user.rb'

describe User do 
   it 'creates a new user ' do 
    user1 = User.new('Mel')
    user2 = User.new('James')

    expect(user1.name).to eq('Mel')
    expect(user2.name).to eq('James')
   end

   it 'check the array of users'do
       expect(User.users.length).to eq(2)
   end
end 