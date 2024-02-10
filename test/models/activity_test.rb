require "test_helper"

class ActivityTest < ActiveSupport::TestCase

  test "should not save activity without title" do
    activity = Activity.new
    assert_not activity.save, "saved activity without title"
  end
end
