class Post < ApplicationRecord
  belongs_to :author
  has_many :comments

  after_create do
    self.slug = self.id + '-' + self.title.parameterize
    self.save
  end

  def to_param
    slug
  end
end
