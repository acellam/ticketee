Then /^I should  be on the project page for "(.*?)"$/ do |project_name|
  project_path(Project.find_by_name!(project_name))
end
	