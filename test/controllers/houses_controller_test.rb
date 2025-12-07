require "test_helper"

class HousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @house = houses(:one)
  end

  test "should get index" do
    get houses_url
    assert_response :success
  end

  test "should get new" do
    get new_house_url
    assert_response :success
  end

  test "should create house" do
    assert_difference("House.count") do
      post houses_url, params: { house: { area_house: @house.area_house, area_total: @house.area_total, bathrooms: @house.bathrooms, bedrooms: @house.bedrooms, builder: @house.builder, length_house: @house.length_house, living_areas: @house.living_areas, min_block_width: @house.min_block_width, name: @house.name, price_base: @house.price_base, storeys: @house.storeys, study_areas: @house.study_areas, width_house: @house.width_house } }
    end

    assert_redirected_to house_url(House.last)
  end

  test "should show house" do
    get house_url(@house)
    assert_response :success
  end

  test "should get edit" do
    get edit_house_url(@house)
    assert_response :success
  end

  test "should update house" do
    patch house_url(@house), params: { house: { area_house: @house.area_house, area_total: @house.area_total, bathrooms: @house.bathrooms, bedrooms: @house.bedrooms, builder: @house.builder, length_house: @house.length_house, living_areas: @house.living_areas, min_block_width: @house.min_block_width, name: @house.name, price_base: @house.price_base, storeys: @house.storeys, study_areas: @house.study_areas, width_house: @house.width_house } }
    assert_redirected_to house_url(@house)
  end

  test "should destroy house" do
    assert_difference("House.count", -1) do
      delete house_url(@house)
    end

    assert_redirected_to houses_url
  end
end
