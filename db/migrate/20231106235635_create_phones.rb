class CreatePhones < ActiveRecord::Migration[7.1]
  def change
    create_table :phones do |t|
      t.integer :type
      t.integer :number
      t.references :user, null: true, foreign_key: true
      t.references :contact, null: true, foreign_key: true

      t.timestamps
    end
  end
end
