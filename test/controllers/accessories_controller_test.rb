require 'test_helper'

class AccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accessory = accessories(:one)
  end

  test "should get index" do
    get accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_accessory_url
    assert_response :success
  end

  test "should create accessory" do
    assert_difference('Accessory.count') do
      post accessories_url, params: { accessory: { accessory_size: @accessory.accessory_size, anodizing_id: @accessory.anodizing_id, brand_id: @accessory.brand_id, design_id: @accessory.design_id, gemstones_ids: @accessory.gemstones_ids, locking_system_id: @accessory.locking_system_id, material_id: @accessory.material_id, quantity: @accessory.quantity, user_id: @accessory.user_id } }
    end

    assert_redirected_to accessory_url(Accessory.last)
  end

  test "should show accessory" do
    get accessory_url(@accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_accessory_url(@accessory)
    assert_response :success
  end

  test "should update accessory" do
    patch accessory_url(@accessory), params: { accessory: { accessory_size: @accessory.accessory_size, anodizing_id: @accessory.anodizing_id, brand_id: @accessory.brand_id, design_id: @accessory.design_id, gemstones_ids: @accessory.gemstones_ids, locking_system_id: @accessory.locking_system_id, material_id: @accessory.material_id, quantity: @accessory.quantity, user_id: @accessory.user_id } }
    assert_redirected_to accessory_url(@accessory)
  end

  test "should destroy accessory" do
    assert_difference('Accessory.count', -1) do
      delete accessory_url(@accessory)
    end

    assert_redirected_to accessories_url
  end
end
