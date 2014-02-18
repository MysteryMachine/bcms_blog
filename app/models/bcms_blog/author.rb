module BcmsBlog
  class Author < ActiveRecord::Base
    acts_as_content_block
    has_attachment :picture
  end
end
