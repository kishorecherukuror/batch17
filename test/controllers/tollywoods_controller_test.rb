require 'test_helper'

class TollywoodsControllerTest < ActionController::TestCase
  setup do
    @tollywood = tollywoods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tollywoods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tollywood" do
    assert_difference('Tollywood.count') do
      post :create, tollywood: { age: @tollywood.age, name: @tollywood.name, political: @tollywood.political, role: @tollywood.role, star: @tollywood.star }
    end

    assert_redirected_to tollywood_path(assigns(:tollywood))
  end

  test "should show tollywood" do
    get :show, id: @tollywood
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tollywood
    assert_response :success
  end

  test "should update tollywood" do
    patch :update, id: @tollywood, tollywood: { age: @tollywood.age, name: @tollywood.name, political: @tollywood.political, role: @tollywood.role, star: @tollywood.star }
    assert_redirected_to tollywood_path(assigns(:tollywood))
  end

  test "should destroy tollywood" do
    assert_difference('Tollywood.count', -1) do
      delete :destroy, id: @tollywood
    end

    assert_redirected_to tollywoods_path
  end
end
