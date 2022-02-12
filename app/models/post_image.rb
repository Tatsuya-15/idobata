class PostImage < ApplicationRecord

  belongs_to :admin
  attachment :image

  validates :image_id, presence: true
  validates :title, presence: true
  validates :caption, presence: true

end
