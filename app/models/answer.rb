class Answer < ActiveRecord::Base
  validates :content, presence: true
  validates :right,
      inclusion: { in: [true, false] }

  belongs_to :question
end
