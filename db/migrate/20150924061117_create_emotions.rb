class CreateEmotions < ActiveRecord::Migration
  def change
    create_table :emotions do |t|
      t.integer :rating
      t.string :image_url
      t.text :description

      t.timestamps null: false
    end
  end
end
