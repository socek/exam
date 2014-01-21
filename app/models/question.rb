class Question < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :quiz
  has_many :answers

  def input_name
    'questions[' + id.to_s() + "][]"
  end
end
