require 'test_helper'

class JewelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jewel = jewels(:one)
  end

  test "should get index" do
    get jewels_url
    assert_response :success
  end

  test "should get new" do
    get new_jewel_url
    assert_response :success
  end

  test "should create jewel" do
    assert_difference('Jewel.count') do
      post jewels_url, params: { jewel: { anodizing_id: @jewel.anodizing_id, brand_id: @jewel.brand_id, design_id: @jewel.design_id, gemstones_ids: @jewel.gemstones_ids, locking_system_id: @jewel.locking_system_id, material_id: @jewel.material_id, quantity: @jewel.quantity, size_id: @jewel.size_id, user_id: @jewel.user_id } }
    end

    assert_redirected_to jewel_url(Jewel.last)
  end

  test "should show jewel" do
    get jewel_url(@jewel)
    assert_response :success
  end

  test "should get edit" do
    get edit_jewel_url(@jewel)
    assert_response :success
  end

  test "should update jewel" do
    patch jewel_url(@jewel), params: { jewel: { anodizing_id: @jewel.anodizing_id, brand_id: @jewel.brand_id, design_id: @jewel.design_id, gemstones_ids: @jewel.gemstones_ids, locking_system_id: @jewel.locking_system_id, material_id: @jewel.material_id, quantity: @jewel.quantity, size_id: @jewel.size_id, user_id: @jewel.user_id } }
    assert_redirected_to jewel_url(@jewel)
  end

  test "should destroy jewel" do
    assert_difference('Jewel.count', -1) do
      delete jewel_url(@jewel)
    end

    assert_redirected_to jewels_url
  end
end
