class Form < ApplicationRecord
  belongs_to :page
  before_save :parameterize_slug

  validate :name, :legend

  def parameterize_slug
    self.name = self.name.parameterize unless self.name.nil?
  end

  def self.to_partial_path
    'form_partial'
  end
end
