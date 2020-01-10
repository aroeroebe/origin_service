class AddPostRefToPosted < ActiveRecord::Migration[5.2]
  def change
    add_reference :posteds, :post, foreign_key: true
  end
end
