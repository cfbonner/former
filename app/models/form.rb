class Form < ApplicationRecord
  belongs_to :page
  has_many :inputs

  before_save :parameterize_name

  validate :name, :legend

  def parameterize_name
    self.name = self.name.parameterize unless self.name.nil?
  end

  def self.to_partial_path
    'form_partial'
  end
end
