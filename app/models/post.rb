class Post < ActiveRecord::Base
  has_many :comments
  has_many :postvotes
  belongs_to :user
  validates :title, presence: true
  validates :external_url, presence: true, :format => {:with => URI.regexp}
end
