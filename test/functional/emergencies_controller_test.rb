require 'test_helper'

class EmergenciesControllerTest < ActionController::TestCase
  setup do
    @emergency = emergencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emergencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emergency" do
    assert_difference('Emergency.count') do
      post :create, emergency: { ambulance: @emergency.ambulance, electric: @emergency.electric, fire: @emergency.fire, gas_heat: @emergency.gas_heat, hospital: @emergency.hospital, insurance: @emergency.insurance, location: @emergency.location, newspaper: @emergency.newspaper, police: @emergency.police, radio: @emergency.radio, telephone: @emergency.telephone, tvchannel: @emergency.tvchannel }
    end

    assert_redirected_to emergency_path(assigns(:emergency))
  end

  test "should show emergency" do
    get :show, id: @emergency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emergency
    assert_response :success
  end

  test "should update emergency" do
    put :update, id: @emergency, emergency: { ambulance: @emergency.ambulance, electric: @emergency.electric, fire: @emergency.fire, gas_heat: @emergency.gas_heat, hospital: @emergency.hospital, insurance: @emergency.insurance, location: @emergency.location, newspaper: @emergency.newspaper, police: @emergency.police, radio: @emergency.radio, telephone: @emergency.telephone, tvchannel: @emergency.tvchannel }
    assert_redirected_to emergency_path(assigns(:emergency))
  end

  test "should destroy emergency" do
    assert_difference('Emergency.count', -1) do
      delete :destroy, id: @emergency
    end

    assert_redirected_to emergencies_path
  end
end
