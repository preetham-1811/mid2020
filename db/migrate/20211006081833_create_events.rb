class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :numberOfIceBlocks
      t.references :camera, null: false, foreign_key: true

      t.timestamps
    end
  end
end
