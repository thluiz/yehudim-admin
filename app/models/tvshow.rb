class Tvshow < ActiveRecord::Base
  has_many :episodes

  validates_presence_of :name
  validates_presence_of :identifier

  validates_uniqueness_of :name
  validates_uniqueness_of :identifier

  default_scope { order('"order" ASC') }
end
