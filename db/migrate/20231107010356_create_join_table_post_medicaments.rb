class CreateJoinTablePostMedicaments < ActiveRecord::Migration[7.1]
  def change
    create_join_table :posts, :medicaments do |t|
      # t.index [:post_id, :medicament_id]
      # t.index [:medicament_id, :post_id]
    end
  end
end
