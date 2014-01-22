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
    quiz = Quiz.create(title: params[:title])
    params[:question].each do |index, question_hash|
      title = question_hash.delete(:title)
      question = Question.create(content: title)
      quiz.questions.append(question)
      question_hash.each do |index, answer_hash|
        answer = Answer.create(content: answer_hash[:content], right: answer_hash.has_key?(:right))
        question.answers.append(answer)
      end
    end
    redirect_to admin_index_path
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
