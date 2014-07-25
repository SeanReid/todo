require 'test_helper'

class UserCanAddTaskTest < ActionDispatch::IntegrationTest

  def test_goes_to_root_path
    visit root_path
    assert page.has_content?("Todo App")
  end

  def test_user_can_add_task
  	visit root_path
  	click_button "Add Task"
    visit new_task_path
  	assert page.has_content?("New Task")
	end

  def test_user_can_delete_task
    Task.create(title: 'hello')
    visit root_path
    click_button "Destroy"
    assert page.has_no_content?('hello'), "hello should not have shown"
  end


end
