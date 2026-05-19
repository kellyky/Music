class CreateMemberships < ActiveRecord::Migration[8.1]
  def change
    create_table :memberships do |t|
      t.references :band, null: false, foreign_key: true
      t.references :musician, null: false, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
