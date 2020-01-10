class AddImageSecToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :image_sec, :string
  end
end
