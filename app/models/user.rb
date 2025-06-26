class User < ApplicationRecord
  # Найти все тесты пользователя по уровню сложности
  def tests_by_level(level)
    Test.joins("INNER JOIN test_passages ON tests.id = test_passages.test_id")
        .where("test_passages.user_id = ? AND tests.level = ?", id, level)
        .distinct
  end
end
