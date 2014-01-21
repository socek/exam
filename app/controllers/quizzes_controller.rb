class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find_by(id: id_param)
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
