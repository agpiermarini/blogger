require "rails_helper"


describe "user creates a new article" do
  describe "they link from the articles index" do
    it "they fill in the title and body" do
      visit articles_path
      click_link("Create a New Article")

      fill_in "article[title]", with: "Did I Mention Dogs Were Great?"
      fill_in "article[body]", with: "No? Well, let me tell you."
      click_on "Create Article"

      # save_and_open_page #this isnt causing anything to appear in server tab

      expect(page).to have_content("Did I Mention Dogs Were Great?")
      expect(page).to have_content("No? Well, let me tell you.")
      expect(page).to have_content("Article 'Did I Mention Dogs Were Great?' Created!")

    end
  end
end
