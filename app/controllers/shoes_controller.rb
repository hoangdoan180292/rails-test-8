class ShoesController < ApplicationController
  def index
    @shoe_filter        = ShoeFilter.new(filter_params, cookies[:sortby])

    @shoes              = @shoe_filter.search.paginate(page: params[:page], per_page: 6)

    @brands             = Brand.all.map{ |c| [c.id, c.title] }
  end

  def filter_params
    params[:shoe_filter]
  end
end