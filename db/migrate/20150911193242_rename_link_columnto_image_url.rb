class RenameLinkColumntoImageUrl < ActiveRecord::Migration
  def change
  	remove_column :emotions, :link
  	remove_column :emotions, :scale
  	add_column :emotions, :rating, :string
  	add_column :emotions, :image_url, :string
  	add_column :emotions, :description, :string
  end
end
