require "test_helper"

class MhollandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mholland = mhollands(:one)
  end

  test "should get index" do
    get mhollands_url
    assert_response :success
  end

  test "should get new" do
    get new_mholland_url
    assert_response :success
  end

  test "should create mholland" do
    assert_difference("Mholland.count") do
      post mhollands_url, params: { mholland: { mason_holland@tayloredu: @mholland.mason_holland@tayloredu } }
    end

    assert_redirected_to mholland_url(Mholland.last)
  end

  test "should show mholland" do
    get mholland_url(@mholland)
    assert_response :success
  end

  test "should get edit" do
    get edit_mholland_url(@mholland)
    assert_response :success
  end

  test "should update mholland" do
    patch mholland_url(@mholland), params: { mholland: { mason_holland@tayloredu: @mholland.mason_holland@tayloredu } }
    assert_redirected_to mholland_url(@mholland)
  end

  test "should destroy mholland" do
    assert_difference("Mholland.count", -1) do
      delete mholland_url(@mholland)
    end

    assert_redirected_to mhollands_url
  end
end
