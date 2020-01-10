class AddImagedToPosted < ActiveRecord::Migration[5.2]
  def change
    add_column :posteds, :imaged, :string
  end
end
