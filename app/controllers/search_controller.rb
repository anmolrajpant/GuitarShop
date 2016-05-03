class SearchController < ApplicationController
  def show
  	@search_query = params[:search] [:search_query]
  	@results = Item.where("make like ?", "%#{@search_query}")
  end
end