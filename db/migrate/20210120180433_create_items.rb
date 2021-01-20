class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :claimed_by
      t.string :picture
      t.numeric :price, :precision => 7, :scale => 2

      t.timestamps
    end
  end
end
