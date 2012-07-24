require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }
  describe "Help page" do
  	before { visit help_path }
    it { should have_selector('h1', :text => 'Help') }
    it { should have_selector('title', :text => "#{base_title} | Help") }
  end

  subject { page }
  describe "About page" do
  	before { visit about_path }
    it { should have_selector('h1', :text => 'About Us') }
    it { should have_selector('title', :text => "#{base_title} | About Us") }
  end

  subject { page }
  describe "Contact page" do
  	before { visit contact_path }
    it { should have_selector('h1', :text => 'Contact') }
    it { should have_selector('title', :text => "#{base_title} | Contact") }
  end

  describe "Home page" do
  	subject { page }
  	before { visit root_path }
    it { should have_selector('h1', :text => 'Sample App') }
    it { should have_selector('title', :text => "Ruby on Rails Tutorial Sample App") }
    it { should_not have_selector('title', :text => '| Home') }
  end
end