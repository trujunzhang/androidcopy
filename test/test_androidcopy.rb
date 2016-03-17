require 'test/unit'
require 'Androidcopy'

class AndroidcopyTest < Test::Unit::TestCase
  def test_any_hello
    message = Androidcopy.hi()
    assert_equal "world!", message
  end
end