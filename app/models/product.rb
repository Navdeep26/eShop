class Product < ApplicationRecord
	has_attached_file :product_image, styles: { product_index: "250x300>", product_show: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :product_image, content_type: /\Aimage\/.*\z/
end
