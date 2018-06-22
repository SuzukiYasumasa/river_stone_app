class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :name, null: false, limit: 20
      t.decimal :lng, null: false, precision: 9, scale: 6
      t.decimal :lat, null: false, precision: 9, scale: 6
      t.references :construction, foreign_key: true, null: false
      t.boolean :release, null: false, default: false

      t.timestamps
    end
  end
end
