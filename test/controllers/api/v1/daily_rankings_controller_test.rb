require "test_helper"

class Api::V1::DailyRankingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_daily_rankings_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_daily_rankings_create_url
    assert_response :success
  end

  test "should get destroy_all" do
    get api_v1_daily_rankings_destroy_all_url
    assert_response :success
  end
end
