require 'test/unit'
# require_relative '../modules/menu_list_2_a'
require_relative '../modules/menu_list_1'

class MenuTest < Test::Unit::TestCase
    def test_menu_list_1
        menu_list_1 
    end
    def test_choices
        assert_not_empty(choices)
    end
    
end
