Spree::Core::Engine.routes.draw do
  scope(:module => "posts") do
    #normal users
    #get "posts/show"
	match 'posts', :to => "posts#index", :as => :posts
   	
   	#admin users
   	namespace :admin do
   		resources :posts 
   		match 'blog', :to => 'posts#new', :as => :blog
   	end
   end

end
