require 'spec_helper'

describe "StaticPagesのテスト" do

  describe "Home pageのテスト" do

    it "'Sample App'という語がhomeに含まれていること" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "タイトルの末尾が'Home'になっていること" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help pageのテスト" do
  
    it "'Help'という語がhelpに含まれていること" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "タイトルの末尾が'Help'になっていること" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About pageのテスト" do

    it "'About Us'という語がAbouに含まれていること" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "タイトルの末尾が'About'になっていること" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end


end
