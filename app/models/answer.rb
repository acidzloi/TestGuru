class Answer < ApplicationRecord
  def question
    Question.find(question_id)
  end
end
