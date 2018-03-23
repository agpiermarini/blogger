require "rails_helper"


describe "user sees one articles" do
  describe "they link from the articles index" do
    it "displays information for one article" do
      article_1.create!(title: "Awesome article", body: "This article is awesome")

      visit '/articles'

      click_link(article_1.title)
      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)
    end
  end
end
