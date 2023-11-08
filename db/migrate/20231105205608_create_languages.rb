class CreateLanguages < ActiveRecord::Migration[7.1]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :code
      
      t.timestamps
    end
  end
end
