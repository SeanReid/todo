require 'test_helper'

class UserCanAddTaskTest < ActionDispatch::IntegrationTest

  def test_goes_to_root_path
    visit root_path
    assert page.has_content?("Todo App")
  end

end
