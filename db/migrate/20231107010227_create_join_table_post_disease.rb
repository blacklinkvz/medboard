class CreateJoinTablePostDisease < ActiveRecord::Migration[7.1]
  def change
    create_join_table :posts, :diseases do |t|
      # t.index [:post_id, :disease_id]
      # t.index [:disease_id, :post_id]
    end
  end
end
