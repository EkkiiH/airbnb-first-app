require "test_helper"

class BookingControllerTest < ActionDispatch::IntegrationTest
  test "should get reservation_date:date" do
    get booking_reservation_date:date_url
    assert_response :success
  end

  test "should get confirmation:booleanuser:references" do
    get booking_confirmation:booleanuser:references_url
    assert_response :success
  end

  test "should get listing:references" do
    get booking_listing:references_url
    assert_response :success
  end
end
