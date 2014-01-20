class Answer < ActiveRecord::Base
  validates :content, presence: true
  validates_inclusion_of :right, :in => [true, false]

  belongs_to :question
end
