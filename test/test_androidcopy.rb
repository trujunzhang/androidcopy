require 'test/unit'
require 'Androidcopy'
require 'android_resource_util'

class AndroidcopyTest < Test::Unit::TestCase
  def test_any_hello
    message = Androidcopy.hi()
    assert_equal "world!", message
  end

  def test_source_path_list
    source_path = "/Users/djzhang/Desktop/wikipedia/apps-android-wikipedia/app/src/main/res"
    dest_Path = "/tmp/IEATTA-ANDROID/res"
    fileName = "ic_search.png"
    files = AndroidResourceUtil.getAllFiles(source_path, fileName)

    assert_equal files.length,10
  end
end