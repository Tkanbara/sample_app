require 'spec_helper'

describe "StaticPagesのテスト" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home pageのテスト" do

    it "'Sample App'という語がhomeに含まれていること" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "タイトルの末尾が'Home'になっていること" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help pageのテスト" do
  
    it "'Help'という語がhelpに含まれていること" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "タイトルの末尾が'Help'になっていること" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About pageのテスト" do

    it "'About Us'という語がAbouに含まれていること" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "タイトルの末尾が'About'になっていること" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contactのテスト" do

    it "タイトルの末尾が'Contact'になっていること" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end

end
