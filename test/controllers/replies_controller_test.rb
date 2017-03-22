# == Schema Information
#
# Table name: replies
#
#  id          :integer          not null, primary key
#  comment     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  timeline_id :integer
#
# Indexes
#
#  index_replies_on_timeline_id  (timeline_id)
#

require 'test_helper'

class RepliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reply = replies(:one)
  end

  test "should get index" do
    get replies_url
    assert_response :success
  end

  test "should get new" do
    get new_reply_url
    assert_response :success
  end

  test "should create reply" do
    assert_difference('Reply.count') do
      post replies_url, params: { reply: { comment: @reply.comment } }
    end

    assert_redirected_to reply_url(Reply.last)
  end

  test "should show reply" do
    get reply_url(@reply)
    assert_response :success
  end

  test "should get edit" do
    get edit_reply_url(@reply)
    assert_response :success
  end

  test "should update reply" do
    patch reply_url(@reply), params: { reply: { comment: @reply.comment } }
    assert_redirected_to reply_url(@reply)
  end

  test "should destroy reply" do
    assert_difference('Reply.count', -1) do
      delete reply_url(@reply)
    end

    assert_redirected_to replies_url
  end
end