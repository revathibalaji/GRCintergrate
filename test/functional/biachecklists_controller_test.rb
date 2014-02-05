require 'test_helper'

class BiachecklistsControllerTest < ActionController::TestCase
  setup do
    @biachecklist = biachecklists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biachecklists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biachecklist" do
    assert_difference('Biachecklist.count') do
      post :create, biachecklist: { Divison_Department: @biachecklist.Divison_Department, Regulatory_Statutory: @biachecklist.Regulatory_Statutory, Reputation_image: @biachecklist.Reputation_image, Stakeholder_impact: @biachecklist.Stakeholder_impact, activity: @biachecklist.activity, comments: @biachecklist.comments, date: @biachecklist.date, facality: @biachecklist.facality, financial_loss: @biachecklist.financial_loss, mao: @biachecklist.mao, overall_rating: @biachecklist.overall_rating, person_interviewed: @biachecklist.person_interviewed }
    end

    assert_redirected_to biachecklist_path(assigns(:biachecklist))
  end

  test "should show biachecklist" do
    get :show, id: @biachecklist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biachecklist
    assert_response :success
  end

  test "should update biachecklist" do
    put :update, id: @biachecklist, biachecklist: { Divison_Department: @biachecklist.Divison_Department, Regulatory_Statutory: @biachecklist.Regulatory_Statutory, Reputation_image: @biachecklist.Reputation_image, Stakeholder_impact: @biachecklist.Stakeholder_impact, activity: @biachecklist.activity, comments: @biachecklist.comments, date: @biachecklist.date, facality: @biachecklist.facality, financial_loss: @biachecklist.financial_loss, mao: @biachecklist.mao, overall_rating: @biachecklist.overall_rating, person_interviewed: @biachecklist.person_interviewed }
    assert_redirected_to biachecklist_path(assigns(:biachecklist))
  end

  test "should destroy biachecklist" do
    assert_difference('Biachecklist.count', -1) do
      delete :destroy, id: @biachecklist
    end

    assert_redirected_to biachecklists_path
  end
end
