require 'test_helper'

class ProfessionalLevelsControllerTest < ActionController::TestCase
  setup do
    @professional_level = professional_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professional_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professional_level" do
    assert_difference('ProfessionalLevel.count') do
      post :create, professional_level: { name: @professional_level.name }
    end

    assert_redirected_to professional_level_path(assigns(:professional_level))
  end

  test "should show professional_level" do
    get :show, id: @professional_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professional_level
    assert_response :success
  end

  test "should update professional_level" do
    patch :update, id: @professional_level, professional_level: { name: @professional_level.name }
    assert_redirected_to professional_level_path(assigns(:professional_level))
  end

  test "should destroy professional_level" do
    assert_difference('ProfessionalLevel.count', -1) do
      delete :destroy, id: @professional_level
    end

    assert_redirected_to professional_levels_path
  end
end
