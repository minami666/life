class Diary < ApplicationRecord
	belongs_to :user
	has_one :spend
end
