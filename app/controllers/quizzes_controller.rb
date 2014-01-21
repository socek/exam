class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
    if current_user
      @quiz = Quiz.find_by(id: id_param)
    else
      redirect_to sign_in_path, notice: 'Please sign in first'
    end
  end

  def submit


    PP.pp(questions)


  end

  private

  def questions
    params.require(:questions)
  end

  def id_param
    params.require(:id)
  end
end
