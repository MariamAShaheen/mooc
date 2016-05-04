require 'test_helper'

class LicturesControllerTest < ActionController::TestCase
  setup do
    @licture = lictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create licture" do
    assert_difference('Licture.count') do
      post :create, licture: { attachment: @licture.attachment, content: @licture.content, course_id: @licture.course_id }
    end

    assert_redirected_to licture_path(assigns(:licture))
  end

  test "should show licture" do
    get :show, id: @licture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @licture
    assert_response :success
  end

  test "should update licture" do
    patch :update, id: @licture, licture: { attachment: @licture.attachment, content: @licture.content, course_id: @licture.course_id }
    assert_redirected_to licture_path(assigns(:licture))
  end

  test "should destroy licture" do
    assert_difference('Licture.count', -1) do
      delete :destroy, id: @licture
    end

    assert_redirected_to lictures_path
  end
end
