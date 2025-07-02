class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  has_many :questions, dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :users, through: :results, dependent: :destroy

  # Найти тесты по категории
  def self.titles_by_category(category_title)
    joins(:category)
      .where(category: { title: category_title })
      .order(title: :desc)
      .pluck(:title)
  end
end
