require 'test_helper'

class MemberAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_account = member_accounts(:one)
  end

  test "should get index" do
    get member_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_member_account_url
    assert_response :success
  end

  test "should create member_account" do
    assert_difference('MemberAccount.count') do
      post member_accounts_url, params: { member_account: { address: @member_account.address, age: @member_account.age, date_of_birth: @member_account.date_of_birth, first_name: @member_account.first_name, gender: @member_account.gender, last_name: @member_account.last_name, marital_status: @member_account.marital_status, picture: @member_account.picture, user_id: @member_account.user_id } }
    end

    assert_redirected_to member_account_url(MemberAccount.last)
  end

  test "should show member_account" do
    get member_account_url(@member_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_account_url(@member_account)
    assert_response :success
  end

  test "should update member_account" do
    patch member_account_url(@member_account), params: { member_account: { address: @member_account.address, age: @member_account.age, date_of_birth: @member_account.date_of_birth, first_name: @member_account.first_name, gender: @member_account.gender, last_name: @member_account.last_name, marital_status: @member_account.marital_status, picture: @member_account.picture, user_id: @member_account.user_id } }
    assert_redirected_to member_account_url(@member_account)
  end

  test "should destroy member_account" do
    assert_difference('MemberAccount.count', -1) do
      delete member_account_url(@member_account)
    end

    assert_redirected_to member_accounts_url
  end
end
