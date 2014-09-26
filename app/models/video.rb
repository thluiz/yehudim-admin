class Video < ActiveRecord::Base
  belongs_to :episode

  validates_presence_of :title
  validates_presence_of :identifier
  validates_presence_of :episode

  validates_uniqueness_of :title
  validates_uniqueness_of :identifier

  default_scope { order('"order" ASC') }

end
