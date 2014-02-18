class CreateAuthors < ActiveRecord::Migration
  def change
    Cms::ContentType.create!(:name => "Author", :group_name => "Blog")
    create_content_table :authors, :prefix=>false do |t|
      t.string :position
      
      t.text :bio

      t.timestamps
    end
    
    v3_5_0_apply_namespace_to_block("BcmsBlog", "Author")
  end
end
