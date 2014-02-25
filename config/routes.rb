BcmsBlog::Engine.routes.draw do
  content_blocks :blogs
  content_blocks :blog_posts
  content_blocks :blog_comments
  content_blocks :authors
  
  resources :authors_page, :only => [:show]
end
