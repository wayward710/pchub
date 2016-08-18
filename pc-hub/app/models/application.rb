class Application < ActiveRecord::Base
	has_many :notifications
	has_attached_file :slider_image, styles: {thumb: "760x546#"}
	has_attached_file :app_image, styles: {thumb: "248x178#"}
	do_not_validate_attachment_file_type :slider_image
	do_not_validate_attachment_file_type :app_image
end
