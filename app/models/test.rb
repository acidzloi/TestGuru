class Test < ApplicationRecord

# Найти тесты по категории
  def self.titles_by_category(category_title)
    joins("INNER JOIN categories ON categories.id = tests.category_id")
      .where("categories.title = ?", category_title)
      .order(title: :desc)
      .pluck(:title)
  end
end
