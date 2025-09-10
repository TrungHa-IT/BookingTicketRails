require "test_helper"

class CinemaDbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinema_db = cinema_dbs(:one)
  end

  test "should get index" do
    get cinema_dbs_url
    assert_response :success
  end

  test "should get new" do
    get new_cinema_db_url
    assert_response :success
  end

  test "should create cinema_db" do
    assert_difference("CinemaDb.count") do
      post cinema_dbs_url, params: { cinema_db: {  } }
    end

    assert_redirected_to cinema_db_url(CinemaDb.last)
  end

  test "should show cinema_db" do
    get cinema_db_url(@cinema_db)
    assert_response :success
  end

  test "should get edit" do
    get edit_cinema_db_url(@cinema_db)
    assert_response :success
  end

  test "should update cinema_db" do
    patch cinema_db_url(@cinema_db), params: { cinema_db: {  } }
    assert_redirected_to cinema_db_url(@cinema_db)
  end

  test "should destroy cinema_db" do
    assert_difference("CinemaDb.count", -1) do
      delete cinema_db_url(@cinema_db)
    end

    assert_redirected_to cinema_dbs_url
  end
end
