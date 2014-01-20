class Exam < ActiveRecord::Base
  validates :title, presence: true

  has_meny :options
end
