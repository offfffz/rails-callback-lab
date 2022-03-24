class CreateLoops < ActiveRecord::Migration[7.0]
  def change
    create_table :loops do |t|
      t.references :looper, null: false, foreign_key: true

      t.timestamps
    end
  end
end
