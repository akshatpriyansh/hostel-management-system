class Hosteller < ActiveRecord::Base
  has_attached_file :form
  validates_attachment_content_type :form, content_type: %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document )
  validates_with AttachmentSizeValidator, attributes: :form, less_than: 5.megabytes
end
