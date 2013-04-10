class Post < ActiveRecord::Base
  attr_accessible :body, :live, :posted_at, :slug, :summary, :title

  has_many :post_products, :dependent => :destroy
  has_many :products, :through => :post_products

  after_create :make_slug

   def make_slug
     @slug = Utils.to_slug(self.title.dup, self)
     self.slug = @slug
     self.save
  end
end
