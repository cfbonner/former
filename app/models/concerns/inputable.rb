module Inputable
  extend ActiveSupport::Concern

  included do
    before_save :parameterize_name

    validate :name, :label

    def parameterize_name
      self.name = self.name.parameterize unless self.name.nil?
    end
  end

#   def name
#     raise 'Not implemented'
#   end

#   def label
#     raise 'Not implemented'
#   end
end
