require 'spec_helper'

describe "User pages" do

  subject { page } 

  # NOTE: not sure if need to replace :user with :username
  # This is cut and pasted from Listing 7.9 from Mike Hartl tutorial
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end

  describe "signup page" do
    before { visit '/users/sign_up' }
      it { should have_content('Sign up') }
    end

  describe "signin page" do
    before { visit '/users/sign_in' }
      it { should have_content("Sign in") }
  end

  describe "index page" do
    before { visit 'index' }
    it {should have_content('abgordon@colorado.edu') }
  end
    
end
