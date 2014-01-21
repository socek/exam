class AdminController < ApplicationController
  def index
    check_permissions

    @quizzes = Quiz.all
  end

  private
  def check_permissions
    if not current_user or not current_user.admin?
      redirect_to sign_in_path, notice: 'Please sign in first'
    end
  end
end
