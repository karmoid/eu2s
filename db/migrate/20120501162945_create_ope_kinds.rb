class CreateOpeKinds < ActiveRecord::Migration
  def change
    create_table :ope_kinds do |t|
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
