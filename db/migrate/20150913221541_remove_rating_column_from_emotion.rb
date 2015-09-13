class RemoveRatingColumnFromEmotion < ActiveRecord::Migration
  def change
  	remove_column :emotions, :rating
  	remove_column :emotions, :description
  end
end
