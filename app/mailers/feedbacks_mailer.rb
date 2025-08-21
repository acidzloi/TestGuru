class FeedbacksMailer < ApplicationMailer
  default to: %("TestGuru Project" <alexrog@yandex.ru>)

  def feedback_email(feedback)
    @name = feedback.name
    @email = feedback.email
    @body = feedback.body

    mail from: @email
  end
end
