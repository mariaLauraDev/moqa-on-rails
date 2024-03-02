require "test_helper"

class AirQualityLogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get air_quality_logs_index_url
    assert_response :success
  end

  test "should get show" do
    get air_quality_logs_show_url
    assert_response :success
  end

  test "should get new" do
    get air_quality_logs_new_url
    assert_response :success
  end

  test "should get create" do
    get air_quality_logs_create_url
    assert_response :success
  end

  test "should get edit" do
    get air_quality_logs_edit_url
    assert_response :success
  end

  test "should get update" do
    get air_quality_logs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get air_quality_logs_destroy_url
    assert_response :success
  end
end
