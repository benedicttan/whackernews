class User < ActiveRecord::Base
  has_many :comments
  has_many :posts
  has_many :commentvotes
  has_many :postvotes
  validates :username, uniqueness: true, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true, presence: true

  def self.authenticate(username,password)
    user = User.where(username: username).first

    if user.password == password
      user
    else
      nil
    end
  end
end
