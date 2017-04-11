require 'test_helper'

class EmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get employee_home_url
    assert_response :success
  end

end
