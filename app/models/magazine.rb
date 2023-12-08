class Magazine < ApplicationRecord
  has_many :ads, dependent: :destroy
end
