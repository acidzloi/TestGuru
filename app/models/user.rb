require 'digest/sha1'

class User < ApplicationRecord
  has_many :test_passages, dependent: :destroy
  has_many :tests, through: :test_passages, dependent: :destroy
  has_many :author_for_tests, class_name: 'Test', foreign_key: :author_id, dependent: :destroy

  has_secure_password
  
  validates :name, presence: true
  validates :email, presence: true, format: URI::MailTo::EMAIL_REGEXP, uniqueness: { case_sensitive: false }

  def tests_user_started(level)
    tests.where(tests: { level: level })
  end

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end
end
