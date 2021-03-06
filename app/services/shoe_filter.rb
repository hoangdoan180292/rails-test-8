class ShoeFilter
  include ActiveModel::Conversion
  extend  ActiveModel::Naming
  attr_accessor :brand_ids, :min_price, :max_price, :sort_by

  def initialize(option, sort_by = '')
    @sort_by          = sort_by
    
    return if option.nil?

    @brand_ids        = option[:brand_ids]
    @min_price        = option[:min_price]
    @max_price        = option[:max_price]
  end

  def search
    shoes = Shoe.all

    shoes = shoes.where(brand: brand_ids) if brand_ids.present? and brand_ids.any? &:present?

    shoes = shoes.where('price >= ?', min_price) if min_price.present?
    
    shoes = shoes.where('price <= ?', max_price) if max_price.present?
    
    shoes = shoes.order(name: sort_by) if sort_by.present?
    
    shoes
  end

  def persisted?
    false
  end
end