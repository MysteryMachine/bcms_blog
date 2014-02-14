BcmsBlog::Engine.routes.draw do
  content_blocks :blogs
  content_blocks :blog_posts
  content_blocks :blog_comments
  namespace :cms do content_blocks :authors end
end
