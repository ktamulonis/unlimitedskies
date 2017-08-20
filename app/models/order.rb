class Order < ApplicationRecord
	has_many :images, dependent: :destroy
end
