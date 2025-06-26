class Question < ApplicationRecord
  def test
    Test.find(test_id)
  end

  def answers
    Answer.where(question_id: id)
  end
end
