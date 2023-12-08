class Ad < ApplicationRecord
  belongs_to :magazine
  validates :magazine, presence: true
end
