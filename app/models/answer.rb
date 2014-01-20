class Answer < ActiveRecord::Base
  validates :content, presence: true
  validates :right,
      presence: true,
      inclusion: { in: [true, false] }

  belongs_to :question
end
