require 'spec_helper'

describe ProjectsController do
	let(:user) do
		user = FactoryGirl.create(:user)
		user.confirm!
		user
	end
	let(:project) do
		project=FactoryGirl.create(:project)
	end

	context "standard users" do
				{ "new" => "get",
				"create" => "post",
				"edit" => "get",
				"update" => "put",
				"destroy" => "delete" }.each do |action, method|
				it "cannot access the #{action} action" do
				sign_in(:user, user)
				send(method, action.dup, :id => project.id)
				response.should redirect_to(root_path)
				flash[:alert].should eql("You must be an admin to do that.")
				end
		end

	end

	it "displays an error for a missing project" do
		get :show ,:id => "not-there"
		response.should redirect_to(projects_path)
		message= "The project you were looking for could not be found."
		flash[:alert].should eql(message)
	end
end
