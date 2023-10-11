class CreateCameras < ActiveRecord::Migration[6.1]
  def change
    create_table :cameras do |t|
      t.string :name
      t.references :ice_factory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
