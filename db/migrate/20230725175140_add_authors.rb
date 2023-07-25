class AddAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.date :birth_date
      t.string :country
      t.timestamps
    end
  end
end
