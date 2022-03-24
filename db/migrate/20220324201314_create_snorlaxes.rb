class CreateSnorlaxes < ActiveRecord::Migration[7.0]
  def change
    create_table :snorlaxes do |t|

      t.timestamps
    end
  end
end
