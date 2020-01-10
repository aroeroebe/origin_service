class RemoveImageSecFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :image_sec, :string
  end
end
