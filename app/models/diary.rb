class Diary < ApplicationRecord
	belongs_to :user
	has_one :spend

	mount_uploader :image, ImageUploader

end
