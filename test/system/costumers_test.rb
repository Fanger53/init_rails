require "application_system_test_case"

class CostumersTest < ApplicationSystemTestCase
  setup do
    @costumer = costumers(:one)
  end

  test "visiting the index" do
    visit costumers_url
    assert_selector "h1", text: "Costumers"
  end

  test "creating a Costumer" do
    visit costumers_url
    click_on "New Costumer"

    fill_in "Customer", with: @costumer.customer_id
    fill_in "Last", with: @costumer.last
    fill_in "Name", with: @costumer.name
    click_on "Create Costumer"

    assert_text "Costumer was successfully created"
    click_on "Back"
  end

  test "updating a Costumer" do
    visit costumers_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @costumer.customer_id
    fill_in "Last", with: @costumer.last
    fill_in "Name", with: @costumer.name
    click_on "Update Costumer"

    assert_text "Costumer was successfully updated"
    click_on "Back"
  end

  test "destroying a Costumer" do
    visit costumers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Costumer was successfully destroyed"
  end
end
