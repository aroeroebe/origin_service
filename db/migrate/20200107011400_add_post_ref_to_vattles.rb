class AddPostRefToVattles < ActiveRecord::Migration[5.2]
  def change
    add_reference :vattles, :post, foreign_key: true
  end
end
