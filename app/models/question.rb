class Question < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :exam
  has_many :answers
end
