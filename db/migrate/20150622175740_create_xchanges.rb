class CreateXchanges < ActiveRecord::Migration
  def change
    create_table :xchanges do |t|
      t.string :pair_id
      t.string :name
      t.float :rate
      t.date :date
      t.time :time
      t.float :ask
      t.float :bid

      t.timestamps null: false
    end
  end
end
