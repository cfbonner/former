module Inputable
  extend ActiveSupport::Concern

  included do
    before_save :parameterize_name

    validate :name, :label

    def parameterize_name
      self.name = self.name.parameterize unless self.name.nil?
    end
  end
end
