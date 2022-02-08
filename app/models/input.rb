class Input < ApplicationRecord
  belongs_to :inputable, polymorphic: true
  belongs_to :form
end
