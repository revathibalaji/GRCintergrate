require 'test_helper'

class PlansControllerTest < ActionController::TestCase
  setup do
    @plan = plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan" do
    assert_difference('Plan.count') do
      post :create, plan: { auditmetric: @plan.auditmetric, emergencyresponse: @plan.emergencyresponse, launchcriteria: @plan.launchcriteria, losstype: @plan.losstype, plan_objective: @plan.plan_objective, plan_title: @plan.plan_title, planstatus: @plan.planstatus, recoverableplantype: @plan.recoverableplantype, recoverableresponse: @plan.recoverableresponse, responsible: @plan.responsible, review: @plan.review, sponsor: @plan.sponsor, sucesscriteria: @plan.sucesscriteria }
    end

    assert_redirected_to plan_path(assigns(:plan))
  end

  test "should show plan" do
    get :show, id: @plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan
    assert_response :success
  end

  test "should update plan" do
    put :update, id: @plan, plan: { auditmetric: @plan.auditmetric, emergencyresponse: @plan.emergencyresponse, launchcriteria: @plan.launchcriteria, losstype: @plan.losstype, plan_objective: @plan.plan_objective, plan_title: @plan.plan_title, planstatus: @plan.planstatus, recoverableplantype: @plan.recoverableplantype, recoverableresponse: @plan.recoverableresponse, responsible: @plan.responsible, review: @plan.review, sponsor: @plan.sponsor, sucesscriteria: @plan.sucesscriteria }
    assert_redirected_to plan_path(assigns(:plan))
  end

  test "should destroy plan" do
    assert_difference('Plan.count', -1) do
      delete :destroy, id: @plan
    end

    assert_redirected_to plans_path
  end
end
