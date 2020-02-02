class Diary < ApplicationRecord
	belongs_to :user
	has_one :spend

	mount_uploader :image, ImageUploader
	accepts_nested_attributes_for :spend

end
