# == Schema Information
#
# Table name: turn_details
#
#  id         :integer          not null, primary key
#  when       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  turn_id    :string
#

require 'test_helper'

class TurnDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turn_detail = turn_details(:one)
  end

  test "should get index" do
    get turn_details_url
    assert_response :success
  end

  test "should get new" do
    get new_turn_detail_url
    assert_response :success
  end

  test "should create turn_detail" do
    assert_difference('TurnDetail.count') do
      post turn_details_url, params: { turn_detail: { user_id: @turn_detail.user_id, when: @turn_detail.when } }
    end

    assert_redirected_to turn_detail_url(TurnDetail.last)
  end

  test "should show turn_detail" do
    get turn_detail_url(@turn_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_turn_detail_url(@turn_detail)
    assert_response :success
  end

  test "should update turn_detail" do
    patch turn_detail_url(@turn_detail), params: { turn_detail: { user_id: @turn_detail.user_id, when: @turn_detail.when } }
    assert_redirected_to turn_detail_url(@turn_detail)
  end

  test "should destroy turn_detail" do
    assert_difference('TurnDetail.count', -1) do
      delete turn_detail_url(@turn_detail)
    end

    assert_redirected_to turn_details_url
  end
end
