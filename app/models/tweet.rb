class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :title
    validates :catch_copy
    validates :recipe, length: { maximum: 1000 }
  end


end
