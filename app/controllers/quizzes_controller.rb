require "user_mailer.rb"

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
    if not current_user
      redirect_to sign_in_path, notice: 'Please sign in first'
    end

    @quiz = Quiz.find_by(id: id_param)
    @score = score
  end

  def new
    @quiz = Quiz.new
  end

  def create
    PP.pp(params[:title])
    PP.pp(params[:question])
  end

  private

  def score
    count = 0
    questions.each do |question_id, answers_ids|
      question = Question.find_by(id: question_id)
      answers_ids.each do |answer_id|
        answer = Answer.find_by(id: answer_id)
        if answer.right
          count += 1
        else
          count -= 1
        end
      end
    end
    count
  end

  def questions
    params.fetch(:questions, {})
  end

  def id_param
    params.require(:id)
  end
end
