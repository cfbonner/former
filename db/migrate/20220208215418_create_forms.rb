class CreateForms < ActiveRecord::Migration[7.0]
  def change
    create_table :forms do |t|
      t.string :name
      t.string :legend
      t.references :page, null: true, foreign_key: true

      t.timestamps
    end
  end
end
