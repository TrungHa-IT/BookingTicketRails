require "application_system_test_case"

class CinemaDbsTest < ApplicationSystemTestCase
  setup do
    @cinema_db = cinema_dbs(:one)
  end

  test "visiting the index" do
    visit cinema_dbs_url
    assert_selector "h1", text: "Cinema dbs"
  end

  test "should create cinema db" do
    visit cinema_dbs_url
    click_on "New cinema db"

    click_on "Create Cinema db"

    assert_text "Cinema db was successfully created"
    click_on "Back"
  end

  test "should update Cinema db" do
    visit cinema_db_url(@cinema_db)
    click_on "Edit this cinema db", match: :first

    click_on "Update Cinema db"

    assert_text "Cinema db was successfully updated"
    click_on "Back"
  end

  test "should destroy Cinema db" do
    visit cinema_db_url(@cinema_db)
    click_on "Destroy this cinema db", match: :first

    assert_text "Cinema db was successfully destroyed"
  end
end
