class CreatePostProducts < ActiveRecord::Migration
  def change
    create_table :post_products do |t|
      t.references :post
      t.references :product
      t.integer    :relevance

      t.timestamps
    end
  end
end
