class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :slug
      t.string :title
      t.text :summary
      t.text :body
      t.boolean :live
      t.datetime :posted_at

      t.timestamps
    end
  end
end
