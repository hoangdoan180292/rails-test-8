require 'rails_helper'

describe ShoeFilter do
  describe '#search' do
    let!(:brand_nike)       { create(:brand, title: "nike") }
    let!(:brand_adidas)     { create(:brand, title: "adidas") }
    let!(:shoes_nike)       { create_list(:shoe, 3, brand: brand_nike, price: 20.45) }
    let!(:shoes_adidas)     { create_list(:shoe, 2, brand: brand_adidas, price: 60.45) }

    context 'return list of shoes with brand nike' do
      it 'returns list of shoes' do
        shoes = ShoeFilter.new(brand_ids: [brand_nike.id]).search

        expect(shoes.size).to eq shoes_nike.size
        expect(shoes).to_not include shoes_adidas.first
      end
    end

    context 'return list of shoes with min_price' do
      it 'returns list of shoes' do
        shoes = ShoeFilter.new(min_price: 20, max_price: 40).search

        expect(shoes.size).to eq 3
      end
    end
  end
end