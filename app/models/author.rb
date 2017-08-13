class Author < ApplicationRecord
  has_many :posts

  def to_param
    slug
  end

  after_create do
    self.slug = self.id.to_s + '-' + self.name.parameterize
    self.save
  end
end
