class RemoveNilStateActiveMembership < ActiveRecord::Migration[8.1]
  def change
    change_column :memberships, :active, :boolean, null: false, default: true
  end
end
