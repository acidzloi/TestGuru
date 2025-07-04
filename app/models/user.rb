class User < ApplicationRecord
  has_many :results, dependent: :destroy
  has_many :tests, through: :results, dependent: :destroy
  has_many :author_for_tests, class_name: 'Test', foreign_key: :author_id, dependent: :destroy

  validates :name, presence: true

  def tests_user_started(level)
    tests.where(tests: { level: level })
  end
end
