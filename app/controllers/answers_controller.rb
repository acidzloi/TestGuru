class AnswersController < ApplicationController
  before_action :find_answer, only: %i[show edit update destroy]
  before_action :find_question, only: %i[new create]

  def new
    @answer = @question.answers.new
  end

  def create
    @answer = @question.answers.new(answer_params)
    if @answer.save
      redirect_to @answer
    else 
      render :new
    end
  end

  def edit
  end

  def update
    if @answer.update(answer_params)
      redirect_to @answer.question
    else  
      render :edit
    end
  end

  def destroy
    @answer.destroy
    redirect_to @answer.question, notice: 'succes' 
  end

  def show
  end

  private
    
  def find_answer
    @answer = Answer.find(params[:id])
  end
  
  def find_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:answer).permit(:body, :correct)
  end

end
