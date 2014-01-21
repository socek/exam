class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :email, :username, presence: true
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validate :permission

  def admin?
    permission == 'admin'
  end
end
