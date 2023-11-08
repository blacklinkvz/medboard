class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :s_name
      t.string :lastname
      t.string :s_lastname
      t.string :rut
      t.string :email
      t.string :password
      t.string :passport
      t.references :bloodtype, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      
  
      t.timestamps
    end
  end
end
