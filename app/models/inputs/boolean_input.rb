class Inputs::BooleanInput < ApplicationRecord
  include Inputable

  def self.inheritance_column
    nil
  end
end
