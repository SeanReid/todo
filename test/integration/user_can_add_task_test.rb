require 'test_helper'

class UserCanAddTaskTest < ActionDispatch::IntegrationTest

  def test_goes_to_root_path
    visit root_path
    assert page.has_content?("Todo App")
  end

  def user_can_add_task
  	visit root_path
  	click_button "Add Task"
  	assert page.has_content?("Add Task")
	end


end
