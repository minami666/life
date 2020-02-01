class User < ApplicationRecord
	has_many :diaries,dependent: :destroy
	validates :nickname,null: false
end
