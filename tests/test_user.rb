require 'test/unit'
require_relative '../classes/user'

class UserTest < Test::Unit::TestCase
    def test_create 
        user = User.new('Holly')
    end

    def test_first_name
        @user = User.new(gets.chomp)
        assert_equal(gets.chomp, @user.name)
    end
end