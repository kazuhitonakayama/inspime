class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.string :title
      t.text :memo
      t.timestamps
    end
  end
end
