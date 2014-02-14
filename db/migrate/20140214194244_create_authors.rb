class CreateAuthors < ActiveRecord::Migration
  def change
    Cms::ContentType.create!(:name => "Author", :group_name => "Author")
    create_content_table :authors, :prefix=>false do |t|
      t.string :position
      
      t.text :bio

      t.timestamps
    end
  end
end
