class CreatePostEmotions < ActiveRecord::Migration
  def change
    create_table :post_emotions do |t|
      t.references :emotion, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
