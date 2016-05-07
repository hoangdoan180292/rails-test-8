class ShoeFilter
  include ActiveModel::Conversion
  extend  ActiveModel::Naming
  attr_accessor :brand_ids

  def initialize(option)
    return if option.nil?

    @brand_ids        = option[:brand_ids]
  end

  def search
    shoes = Shoe.all

    shoes = shoes.where(brand: brand_ids) if brand_ids.present? and brand_ids.any? &:present?
    
    shoes
  end

  def persisted?
    false
  end
end