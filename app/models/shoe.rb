class Shoe < ActiveRecord::Base
  belongs_to  :brand

  validates :name,        presence: true
  validates :sku,         presence: true
  validates :price,       presence: true, numericality: { greater_than: 0 }

  has_attached_file :picture,
    styles: { thumb: ['220x120>'] },
    :default_url => "shoe/no-image.png"
  validates_attachment :picture,
    content_type: {content_type: /\Aimage\/.*\Z/},
    size: { in: 0..5.megabytes, message: 'Photo size too large. Please limit to 5 mbs.' }
end