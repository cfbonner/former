class CreateInputsTextInputs < ActiveRecord::Migration[7.0]
  def change
    create_table :inputs_text_inputs do |t|
      t.string :name
      t.string :label

      t.timestamps
    end
  end
end
