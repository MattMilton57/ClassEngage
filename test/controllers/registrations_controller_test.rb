require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get registrations_url, as: :json
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post registrations_url, params: { registration: { class_period_id: @registration.class_period_id, student_id: @registration.student_id } }, as: :json
    end

    assert_response 201
  end

  test "should show registration" do
    get registration_url(@registration), as: :json
    assert_response :success
  end

  test "should update registration" do
    patch registration_url(@registration), params: { registration: { class_period_id: @registration.class_period_id, student_id: @registration.student_id } }, as: :json
    assert_response 200
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete registration_url(@registration), as: :json
    end

    assert_response 204
  end
end
