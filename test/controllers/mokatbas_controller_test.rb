require 'test_helper'

class MokatbasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mokatba = mokatbas(:one)
  end

  test "should get index" do
    get mokatbas_url
    assert_response :success
  end

  test "should get new" do
    get new_mokatba_url
    assert_response :success
  end

  test "should create mokatba" do
    assert_difference('Mokatba.count') do
      post mokatbas_url, params: { mokatba: { attachedFile: @mokatba.attachedFile, description: @mokatba.description, title: @mokatba.title } }
    end

    assert_redirected_to mokatba_url(Mokatba.last)
  end

  test "should show mokatba" do
    get mokatba_url(@mokatba)
    assert_response :success
  end

  test "should get edit" do
    get edit_mokatba_url(@mokatba)
    assert_response :success
  end

  test "should update mokatba" do
    patch mokatba_url(@mokatba), params: { mokatba: { attachedFile: @mokatba.attachedFile, description: @mokatba.description, title: @mokatba.title } }
    assert_redirected_to mokatba_url(@mokatba)
  end

  test "should destroy mokatba" do
    assert_difference('Mokatba.count', -1) do
      delete mokatba_url(@mokatba)
    end

    assert_redirected_to mokatbas_url
  end
end
