class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def score_email(user, score, max_score)
      @user = user
      @score = score
      @max_score = max_score
      @url  = 'http://example.com/login'
      mail(to: @user.email, subject: 'You score result!')
    end
end
