require 'test_helper'

class ToilelogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toilelog = toilelogs(:one)
  end

  test "should get index" do
    get toilelogs_url
    assert_response :success
  end

  test "should get new" do
    get new_toilelog_url
    assert_response :success
  end

  test "should create toilelog" do
    assert_difference('Toilelog.count') do
      post toilelogs_url, params: { toilelog: { kuchikomi: @toilelog.kuchikomi, title: @toilelog.title } }
    end

    assert_redirected_to toilelog_url(Toilelog.last)
  end

  test "should show toilelog" do
    get toilelog_url(@toilelog)
    assert_response :success
  end

  test "should get edit" do
    get edit_toilelog_url(@toilelog)
    assert_response :success
  end

  test "should update toilelog" do
    patch toilelog_url(@toilelog), params: { toilelog: { kuchikomi: @toilelog.kuchikomi, title: @toilelog.title } }
    assert_redirected_to toilelog_url(@toilelog)
  end

  test "should destroy toilelog" do
    assert_difference('Toilelog.count', -1) do
      delete toilelog_url(@toilelog)
    end

    assert_redirected_to toilelogs_url
  end
end
