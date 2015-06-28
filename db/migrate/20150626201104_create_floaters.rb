class CreateFloaters < ActiveRecord::Migration
  def change
    create_table :floaters do |t|
      t.references :floater_type
      t.string :pair_id
      t.float :value
      t.datetime :start_at
      t.datetime :end_at
      t.integer :durability
      t.boolean :active

      t.timestamps null: false
    end
  end
end
