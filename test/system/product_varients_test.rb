require "application_system_test_case"

class ProductVarientsTest < ApplicationSystemTestCase
  setup do
    @product_varient = product_varients(:one)
  end

  test "visiting the index" do
    visit product_varients_url
    assert_selector "h1", text: "Product varients"
  end

  test "should create product varient" do
    visit product_varients_url
    click_on "New product varient"

    fill_in "Color", with: @product_varient.color
    fill_in "Product", with: @product_varient.product_id
    fill_in "Size", with: @product_varient.size
    click_on "Create Product varient"

    assert_text "Product varient was successfully created"
    click_on "Back"
  end

  test "should update Product varient" do
    visit product_varient_url(@product_varient)
    click_on "Edit this product varient", match: :first

    fill_in "Color", with: @product_varient.color
    fill_in "Product", with: @product_varient.product_id
    fill_in "Size", with: @product_varient.size
    click_on "Update Product varient"

    assert_text "Product varient was successfully updated"
    click_on "Back"
  end

  test "should destroy Product varient" do
    visit product_varient_url(@product_varient)
    click_on "Destroy this product varient", match: :first

    assert_text "Product varient was successfully destroyed"
  end
end
