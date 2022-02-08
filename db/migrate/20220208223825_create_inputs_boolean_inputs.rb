class CreateInputsBooleanInputs < ActiveRecord::Migration[7.0]
  def change
    create_table :inputs_boolean_inputs do |t|
      t.string :name
      t.string :label
      t.string :type

      t.timestamps
    end
  end
end
