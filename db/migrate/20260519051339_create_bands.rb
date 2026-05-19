class CreateBands < ActiveRecord::Migration[8.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre

      t.timestamps
    end
  end
end
