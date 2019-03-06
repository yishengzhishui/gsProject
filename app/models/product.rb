# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  title       :string(255)
#  description :text(65535)
#  quantity    :integer
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string(255)
#

class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
end
