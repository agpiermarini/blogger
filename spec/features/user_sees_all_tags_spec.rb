require 'rails_helper'

describe 'User' do
  describe 'visits tag index' do
    it 'and sees all tags' do
      article = Article.create!(title: "New Title", body: "New Body")
      tag = Tag.create!(name: "Name")
      tagging = Tagging.create!(article_id: article.id, tag_id: tag.id)

      visit tags_path

      expect(page).to have_content(tag.name)
    end
  end
end
