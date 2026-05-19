class AddUniqueIndexToMemberships < ActiveRecord::Migration[8.1]
  def change
    add_index :memberships, [:band_id, :musician_id], unique: true
  end
end
