class Test < ApplicationRecord
  def category
    Category.find(category_id)
  end

  def questions
    Question.where(test_id: id)
  end

# Найти тесты по категории
  def self.titles_by_category(category_title)
    category = Category.find_by(title: category_title)
    return [] unless category

    where(category_id: category.id)
      .order(title: :desc)
      .pluck(:title)
  end
end
