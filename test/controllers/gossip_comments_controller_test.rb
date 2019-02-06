require 'test_helper'

class GossipCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gossip_comments_index_url
    assert_response :success
  end

  test "should get new" do
    get gossip_comments_new_url
    assert_response :success
  end

  test "should get show" do
    get gossip_comments_show_url
    assert_response :success
  end

  test "should get create" do
    get gossip_comments_create_url
    assert_response :success
  end

  test "should get edit" do
    get gossip_comments_edit_url
    assert_response :success
  end

  test "should get update" do
    get gossip_comments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get gossip_comments_destroy_url
    assert_response :success
  end

end
