require "application_system_test_case"

class PratosTest < ApplicationSystemTestCase
  setup do
    @prato = pratos(:one)
  end

  test "visiting the index" do
    visit pratos_url
    assert_selector "h1", text: "Pratos"
  end

  test "creating a Prato" do
    visit pratos_url
    click_on "New Prato"

    fill_in "Descricao", with: @prato.descricao
    fill_in "Preco", with: @prato.preco
    fill_in "Tempopreparo", with: @prato.tempoPreparo
    click_on "Create Prato"

    assert_text "Prato was successfully created"
    click_on "Back"
  end

  test "updating a Prato" do
    visit pratos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @prato.descricao
    fill_in "Preco", with: @prato.preco
    fill_in "Tempopreparo", with: @prato.tempoPreparo
    click_on "Update Prato"

    assert_text "Prato was successfully updated"
    click_on "Back"
  end

  test "destroying a Prato" do
    visit pratos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prato was successfully destroyed"
  end
end
