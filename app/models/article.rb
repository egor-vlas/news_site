class Article < ApplicationRecord
	validates :title, presence: true, length: {minimum: 3, maximum: 250}
	validates :body, presence: true
end
