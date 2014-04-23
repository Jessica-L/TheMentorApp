require 'spec_helper'

describe "User pages" do

  subject { page } 

  describe "signup page" do
    before { visit '/users/sign_up' }

      it { should have_content('Welcome! Fill out your information below:') }

    end

  describe "signin page" do
    before { visit '/users/sign_in' }
      it { should have_content("Sign in") }
  end

#  describe "index page" do
#    before { visit 'index' }
#    it {should have_content('abgordon@colorado.edu') }
#  end
    
end
