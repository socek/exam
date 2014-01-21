class Quiz < ActiveRecord::Base
  validates :title, presence: true

  has_many :questions

  def max_score
    count = 0
    questions.each do |question|
      question.answers.each do |answer|
        if answer.right
          count += 1
        end
      end
    end
    count
  end
end
