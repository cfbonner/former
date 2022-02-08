class CreateInputs < ActiveRecord::Migration[7.0]
  def change
    create_table :inputs do |t|
      t.integer :inputable_id
      t.string :inputable_type
      t.integer :position
      t.references :form, null: true, foreign_key: true

      t.timestamps
    end
  end
end
