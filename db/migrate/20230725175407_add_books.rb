class AddBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.references :publisher, null: false, foreign_key: true
      t.integer :amount
      t.timestamps
    end
  end
end
