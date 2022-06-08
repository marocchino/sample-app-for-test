class HomeController < ApplicationController
  def index
    @products = store.products.all

    @all_comments = @products.find_each.flat_map do |product|
      product.comments.where(store_id: store.id).all
    end
  end

  private

  def store
    Store.find_by(name: 'sample')
  end
end
