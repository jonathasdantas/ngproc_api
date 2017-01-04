require 'test_helper'

class JusticeProcessTest < ActiveSupport::TestCase
  setup do
    @justice_process = justice_processes(:one)
  end

  test "require npu" do
    @justice_process.npu = "      "
    assert_not @justice_process.valid?
  end

  test "require district" do
    @justice_process.district = "      "
    assert_not @justice_process.valid?
  end
end
