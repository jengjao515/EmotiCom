class CreateEmotions < ActiveRecord::Migration
  def change
    create_table :emotions do |t|
      t.string :link
      t.string :scale

      t.timestamps null: false
    end
  end
end
