module BcmsBlog
  class AuthorsPageController < Cms::ApplicationController
    layout "signed_out"
  
    def show
      @author = BcmsBlog::Author.where(:name => params[:id]).first
      @articles = BcmsBlog::BlogPost.where(:author_id => @author.id) 
    end
  end
end