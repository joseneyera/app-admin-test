class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier
  has_many :warehouse_records
# para decirle que carge la imagen en el campo "imagen"
  mount_uploader :imagen, ImagenProductoUploader
end
