class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :name
      t.references :ope_kind
      t.string :num_version
      t.text :info

      t.timestamps
    end
    add_index :operations, :ope_kind_id
  end
end
