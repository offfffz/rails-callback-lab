class CreateLoopers < ActiveRecord::Migration[7.0]
  def change
    create_table :loopers do |t|
      t.string :name
      t.decimal :count, default: 0, null: false

      t.timestamps
    end
  end
end
