require 'test/unit'
require_relative '../classes/user'

class UserTest < Test::Unit::TestCase
    def test_create 
        user = User.new(gets.chomp)
    end

end