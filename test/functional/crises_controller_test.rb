require 'test_helper'

class CrisesControllerTest < ActionController::TestCase
  setup do
    @crisis = crises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crisis" do
    assert_difference('Crisis.count') do
      post :create, crisis: { Datetime_occured: @crisis.Datetime_occured, Details: @crisis.Details, crisis_Category: @crisis.crisis_Category, crisis_id: @crisis.crisis_id, crisis_severity: @crisis.crisis_severity, crisis_status: @crisis.crisis_status, crisis_test: @crisis.crisis_test, crisis_type: @crisis.crisis_type, summary: @crisis.summary }
    end

    assert_redirected_to crisis_path(assigns(:crisis))
  end

  test "should show crisis" do
    get :show, id: @crisis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crisis
    assert_response :success
  end

  test "should update crisis" do
    put :update, id: @crisis, crisis: { Datetime_occured: @crisis.Datetime_occured, Details: @crisis.Details, crisis_Category: @crisis.crisis_Category, crisis_id: @crisis.crisis_id, crisis_severity: @crisis.crisis_severity, crisis_status: @crisis.crisis_status, crisis_test: @crisis.crisis_test, crisis_type: @crisis.crisis_type, summary: @crisis.summary }
    assert_redirected_to crisis_path(assigns(:crisis))
  end

  test "should destroy crisis" do
    assert_difference('Crisis.count', -1) do
      delete :destroy, id: @crisis
    end

    assert_redirected_to crises_path
  end
end
