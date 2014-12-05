class Comment < ActiveRecord::Base
  has_many :commentvotes
  belongs_to :user
  belongs_to :post
end
