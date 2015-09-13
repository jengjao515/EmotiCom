class AddRatingColumnToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :rating, :string
  	add_column :posts, :description, :string
  end
end
