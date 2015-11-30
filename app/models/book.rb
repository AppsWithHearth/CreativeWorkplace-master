class Book < ActiveRecord::Base
	validates :title, :author, :price, :description, presence: true
end
