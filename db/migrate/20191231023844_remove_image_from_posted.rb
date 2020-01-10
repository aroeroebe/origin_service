class RemoveImageFromPosted < ActiveRecord::Migration[5.2]
  def change
    remove_column :posteds, :image, :string
  end
end
