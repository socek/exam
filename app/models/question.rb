class Question < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :quiz
  has_many :answers
end
