require "rails_helper"


describe "user edits an article" do
  describe "they link from the show page" do
    it "displays all articles with edited information" do
      article_1 = Article.create!(title: "Title 1", body: "Body 1")
      article_2 = Article.create!(title: "Title 2", body: "Body 2")

      visit article_path(article_1)
      click_link "Edit"

      fill_in "article[title]", with: "New Article Title"
      fill_in "article[body]", with: "New Article Body"
      click_on "Update Article"

      expect(page).to have_content("New Article Title")
      expect(page).to have_content("New Article Body")
      expect(page).to have_content("Article 'New Article Title' was Updated!")
    end
  end
end
