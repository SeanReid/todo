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
    assert page.has_content?('Destroy')
  end

  def test_add_task_form
    visit root_path
    click_button "Add Task"
    visit new_task_path
    fill_in :Title, :with => "Sample Task"
    click_button 'Create Task'
    visit root_path
    assert page.has_content?('Sample Task')
  end

end
