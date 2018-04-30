require_relative 'images_uploader'

class Images < ActiveRecord::Base
  mount_uploader :image, ImagesUploader
  belongs_to :post
end