class AddUserToBattles < ActiveRecord::Migration[5.2]
  def change
    add_reference :battles, :user, foreign_key: true
  end
end
