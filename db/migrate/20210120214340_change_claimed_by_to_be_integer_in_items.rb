class ChangeClaimedByToBeIntegerInItems < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :claimed_by, :integer
  end
end
