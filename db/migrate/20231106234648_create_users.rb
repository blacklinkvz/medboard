class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :s_name
      t.string :lastname, null: false
      t.string :s_lastname, null: false
      t.string :rut, null: false
      t.string :email, null: false
      t.string :password_digest
      t.string :passport
      t.references :bloodtype, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.boolean :admin
      
  
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :rut, unique: true
    add_index :users, :passport, unique: true
  end
end
