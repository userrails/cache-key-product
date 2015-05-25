class Product < ActiveRecord::Base
  def self.live
    Rails.cache.fetch(["product", "all", Product.maximum(:created_at).to_i]) do 
      Product.all
    end
  end
end
