require "application_system_test_case"

class MemberAccountsTest < ApplicationSystemTestCase
  setup do
    @member_account = member_accounts(:one)
  end

  test "visiting the index" do
    visit member_accounts_url
    assert_selector "h1", text: "Member Accounts"
  end

  test "creating a Member account" do
    visit member_accounts_url
    click_on "New Member Account"

    fill_in "Address", with: @member_account.address
    fill_in "Age", with: @member_account.age
    fill_in "Date of birth", with: @member_account.date_of_birth
    fill_in "First name", with: @member_account.first_name
    fill_in "Gender", with: @member_account.gender
    fill_in "Last name", with: @member_account.last_name
    fill_in "Marital status", with: @member_account.marital_status
    fill_in "Picture", with: @member_account.picture
    fill_in "User", with: @member_account.user_id
    click_on "Create Member account"

    assert_text "Member account was successfully created"
    click_on "Back"
  end

  test "updating a Member account" do
    visit member_accounts_url
    click_on "Edit", match: :first

    fill_in "Address", with: @member_account.address
    fill_in "Age", with: @member_account.age
    fill_in "Date of birth", with: @member_account.date_of_birth
    fill_in "First name", with: @member_account.first_name
    fill_in "Gender", with: @member_account.gender
    fill_in "Last name", with: @member_account.last_name
    fill_in "Marital status", with: @member_account.marital_status
    fill_in "Picture", with: @member_account.picture
    fill_in "User", with: @member_account.user_id
    click_on "Update Member account"

    assert_text "Member account was successfully updated"
    click_on "Back"
  end

  test "destroying a Member account" do
    visit member_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member account was successfully destroyed"
  end
end
