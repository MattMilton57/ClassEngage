require 'test_helper'

class ClassPeriodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_period = class_periods(:one)
  end

  test "should get index" do
    get class_periods_url, as: :json
    assert_response :success
  end

  test "should create class_period" do
    assert_difference('ClassPeriod.count') do
      post class_periods_url, params: { class_period: { subject: @class_period.subject } }, as: :json
    end

    assert_response 201
  end

  test "should show class_period" do
    get class_period_url(@class_period), as: :json
    assert_response :success
  end

  test "should update class_period" do
    patch class_period_url(@class_period), params: { class_period: { subject: @class_period.subject } }, as: :json
    assert_response 200
  end

  test "should destroy class_period" do
    assert_difference('ClassPeriod.count', -1) do
      delete class_period_url(@class_period), as: :json
    end

    assert_response 204
  end
end
