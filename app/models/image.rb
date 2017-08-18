class Image < ApplicationRecord
  belongs_to :order
  has_attached_file :pic, styles: { large: "1800x1200>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
end
