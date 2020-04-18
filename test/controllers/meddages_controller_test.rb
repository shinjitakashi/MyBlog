require 'test_helper'

class MeddagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meddage = meddages(:one)
  end

  test "should get index" do
    get meddages_url
    assert_response :success
  end

  test "should get new" do
    get new_meddage_url
    assert_response :success
  end

  test "should create meddage" do
    assert_difference('Meddage.count') do
      post meddages_url, params: { meddage: { message: @meddage.message, title: @meddage.title } }
    end

    assert_redirected_to meddage_url(Meddage.last)
  end

  test "should show meddage" do
    get meddage_url(@meddage)
    assert_response :success
  end

  test "should get edit" do
    get edit_meddage_url(@meddage)
    assert_response :success
  end

  test "should update meddage" do
    patch meddage_url(@meddage), params: { meddage: { message: @meddage.message, title: @meddage.title } }
    assert_redirected_to meddage_url(@meddage)
  end

  test "should destroy meddage" do
    assert_difference('Meddage.count', -1) do
      delete meddage_url(@meddage)
    end

    assert_redirected_to meddages_url
  end
end
