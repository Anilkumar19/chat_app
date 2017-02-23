require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	# before :each do
	# 	#@group = FactoryGirl.create(:group, group_name: 'Tools', group_description: 'Tools and Utilities')
	# 	user = FactoryGirl.create(:user, username: 'mdd', password: 'aaa', password_confirmation: 'aaa')
	# 	session[:user_id] = user.id
	# end

	describe "GET index" do
		it "assigns @teams" do
			user1 = User.all
			get :index
			expect(assigns(:users)).to eq(user1)
		end

		it "renders the index template" do
			get :index
			expect(response).to render_template("index")
		end
	end

	describe "User create" do
		it "create user" do
      post :create, user: FactoryGirl.attributes_for(:user) #, name: "alk", email: "asdf@gmail.com"
      expect(User.count).to eq(3)
  end
     #expect(response).to be_success
      #expect(response).to have_http_status(200)
  end

end
