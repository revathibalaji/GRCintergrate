require 'test_helper'

class TestsControllerTest < ActionController::TestCase
  setup do
    @test = tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test" do
    assert_difference('Test.count') do
      post :create, test: { nexttraining_date: @test.nexttraining_date, test_date: @test.test_date, test_feedback: @test.test_feedback, test_responsible: @test.test_responsible, test_status: @test.test_status, test_type: @test.test_type, training_date: @test.training_date, training_name: @test.training_name, trainingplan_feedback: @test.trainingplan_feedback }
    end

    assert_redirected_to test_path(assigns(:test))
  end

  test "should show test" do
    get :show, id: @test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test
    assert_response :success
  end

  test "should update test" do
    put :update, id: @test, test: { nexttraining_date: @test.nexttraining_date, test_date: @test.test_date, test_feedback: @test.test_feedback, test_responsible: @test.test_responsible, test_status: @test.test_status, test_type: @test.test_type, training_date: @test.training_date, training_name: @test.training_name, trainingplan_feedback: @test.trainingplan_feedback }
    assert_redirected_to test_path(assigns(:test))
  end

  test "should destroy test" do
    assert_difference('Test.count', -1) do
      delete :destroy, id: @test
    end

    assert_redirected_to tests_path
  end
end
