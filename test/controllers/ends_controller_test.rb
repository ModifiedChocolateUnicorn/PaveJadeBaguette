require 'test_helper'

class EndsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @end = ends(:one)
  end

  test "should get index" do
    get ends_url
    assert_response :success
  end

  test "should get new" do
    get new_end_url
    assert_response :success
  end

  test "should create end" do
    assert_difference('End.count') do
      post ends_url, params: { end: { anodizing_id: @end.anodizing_id, brand_id: @end.brand_id, design_id: @end.design_id, end_size: @end.end_size, gemstones_ids: @end.gemstones_ids, locking_system_id: @end.locking_system_id, material_id: @end.material_id, quantity: @end.quantity, user_id: @end.user_id } }
    end

    assert_redirected_to end_url(End.last)
  end

  test "should show end" do
    get end_url(@end)
    assert_response :success
  end

  test "should get edit" do
    get edit_end_url(@end)
    assert_response :success
  end

  test "should update end" do
    patch end_url(@end), params: { end: { anodizing_id: @end.anodizing_id, brand_id: @end.brand_id, design_id: @end.design_id, end_size: @end.end_size, gemstones_ids: @end.gemstones_ids, locking_system_id: @end.locking_system_id, material_id: @end.material_id, quantity: @end.quantity, user_id: @end.user_id } }
    assert_redirected_to end_url(@end)
  end

  test "should destroy end" do
    assert_difference('End.count', -1) do
      delete end_url(@end)
    end

    assert_redirected_to ends_url
  end
end
