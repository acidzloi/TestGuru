class User < ApplicationRecord
  # Найти все тесты пользователя по уровню сложности
  def tests_user_started(level)
    Test.joins("INNER JOIN results ON results.test_id = tests.id INNER JOIN users ON users.id = results.user_id")
        .where("users.id = ?", id)
        .where("tests.level = ?", level)
  end
end
