class Page < ApplicationRecord
  validates :title, :slug, presence: true
  before_save :parameterize_slug

  def parameterize_slug
    self.slug = self.slug.parameterize unless self.slug.nil?
  end

  def to_param
    slug
  end
end
