require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "Should save a valid article" do
    article = articles(:two)
    assert article.save
  end

  test "Should not save without a body" do
    article = articles(:one)
    assert !article.save
  end
end
