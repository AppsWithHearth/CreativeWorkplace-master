class Comment < ActiveRecord::Base

  validates :user, :post, presence: true

belongs_to :post
belongs_to :user

end
