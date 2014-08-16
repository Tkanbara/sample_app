require 'spec_helper'

describe "StaticPagesのテスト" do

  describe "Home pageのテスト" do

    it "'Sample App'という語がhomeに含まれていること" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe "Help pageのテスト" do
  
    it "'Help'という語がhelpに含まれていること" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

end
