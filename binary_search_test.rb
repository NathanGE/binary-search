require 'minitest/autorun'
require_relative 'binary_search'

class TestBinarySearch < Minitest::Test
  def test_binary_search
    array = [1, 3, 5, 6, 12, 14]
    target = 6
    index_of_target = 3
    outside_array = 15
    assert_equal index_of_target, binary_search(array, target)
    assert_equal -1, binary_search(array, outside_array)
  end
end