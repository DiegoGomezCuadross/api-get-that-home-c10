class Property < ApplicationRecord
  has_one_attached :photo
  belongs_to :user, counter_cache: :favorites_count
  has_many :favorites, dependent: :destroy

end
