class Brand < ActiveRecord::Base
  has_many  :shoes

  validates :title, presence: true
end