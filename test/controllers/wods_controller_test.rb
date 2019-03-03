require 'test_helper'

class WodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wod = wods(:one)
  end

  test "should get index" do
    get wods_url
    assert_response :success
  end

  test "should get new" do
    get new_wod_url
    assert_response :success
  end

  test "should create wod" do
    assert_difference('Wod.count') do
      post wods_url, params: { wod: { description: @wod.description, movement_1: @wod.movement_1, movement_2: @wod.movement_2, movement_3: @wod.movement_3, movement_4: @wod.movement_4, movement_5: @wod.movement_5, movement_6: @wod.movement_6, movemtnt_7: @wod.movemtnt_7, name: @wod.name, rep: @wod.rep, score: @wod.score, score_set: @wod.score_set } }
    end

    assert_redirected_to wod_url(Wod.last)
  end

  test "should show wod" do
    get wod_url(@wod)
    assert_response :success
  end

  test "should get edit" do
    get edit_wod_url(@wod)
    assert_response :success
  end

  test "should update wod" do
    patch wod_url(@wod), params: { wod: { description: @wod.description, movement_1: @wod.movement_1, movement_2: @wod.movement_2, movement_3: @wod.movement_3, movement_4: @wod.movement_4, movement_5: @wod.movement_5, movement_6: @wod.movement_6, movemtnt_7: @wod.movemtnt_7, name: @wod.name, rep: @wod.rep, score: @wod.score, score_set: @wod.score_set } }
    assert_redirected_to wod_url(@wod)
  end

  test "should destroy wod" do
    assert_difference('Wod.count', -1) do
      delete wod_url(@wod)
    end

    assert_redirected_to wods_url
  end
end
