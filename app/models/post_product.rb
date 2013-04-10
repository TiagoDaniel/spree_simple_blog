class PostProduct < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :post_id, :product_id, :relevance
  
  belongs_to :post
  belongs_to :product
end
