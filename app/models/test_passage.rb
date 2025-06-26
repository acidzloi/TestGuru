class TestPassage < ApplicationRecord
  def user
    User.find(user_id)
  end

  def test
    Test.find(test_id)
  end
end
