Spree::Core::Engine.routes.append do
  scope(:module => "posts") do
    #normal users
    #get "posts/show"
	match 'posts', :to => "posts#index", :as => :posts
   	
   	#admin users
   	namespace :sysadmin do
   		resources :posts 
   		match 'blog', :to => 'posts#new', :as => :blog
   	end
   end

end
