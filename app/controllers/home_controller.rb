class HomeController < ApplicationController
  before_action :find_store, only: [:index]
  def index
    @products = @current_store.products.all
    @all_comments = @current_store.comments.all

    # @all_comments = @products.find_each.flat_map do |product|
    #   product.comments.where(store_id: current_store.id).all
    # end
  end

  private

  def find_store
    @current_store = Store.find_by(name: 'sample')
    head :not_found unless @current_store
  end
end
