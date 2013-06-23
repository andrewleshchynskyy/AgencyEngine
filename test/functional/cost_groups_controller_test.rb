require 'test_helper'

class CostGroupsControllerTest < ActionController::TestCase
  setup do
    @cost_group = cost_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cost_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cost_group" do
    assert_difference('CostGroup.count') do
      post :create, cost_group: { active: @cost_group.active, name: @cost_group.name }
    end

    assert_redirected_to cost_group_path(assigns(:cost_group))
  end

  test "should show cost_group" do
    get :show, id: @cost_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cost_group
    assert_response :success
  end

  test "should update cost_group" do
    put :update, id: @cost_group, cost_group: { active: @cost_group.active, name: @cost_group.name }
    assert_redirected_to cost_group_path(assigns(:cost_group))
  end

  test "should destroy cost_group" do
    assert_difference('CostGroup.count', -1) do
      delete :destroy, id: @cost_group
    end

    assert_redirected_to cost_groups_path
  end
end
