class ShoesController < ApplicationController
  def index
    @shoe_filter        = ShoeFilter.new(filter_params, cookies[:sortby])

    @shoes              = @shoe_filter.search

    @brands             = Brand.all.map{ |c| [c.id, c.title] }
  end

  def filter_params
    params[:shoe_filter]
  end
end