require 'test_helper'

class TerminalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terminal = terminals(:one)
  end

  test "should get index" do
    get terminals_url, as: :json
    assert_response :success
  end

  test "should create terminal" do
    assert_difference('Terminal.count') do
      post terminals_url, params: { terminal: { name: @terminal.name, notes: @terminal.notes } }, as: :json
    end

    assert_response 201
  end

  test "should show terminal" do
    get terminal_url(@terminal), as: :json
    assert_response :success
  end

  test "should update terminal" do
    patch terminal_url(@terminal), params: { terminal: { name: @terminal.name, notes: @terminal.notes } }, as: :json
    assert_response 200
  end

  test "should destroy terminal" do
    assert_difference('Terminal.count', -1) do
      delete terminal_url(@terminal), as: :json
    end

    assert_response 204
  end
end
