class Episode < ActiveRecord::Base
  belongs_to :tvshow
  has_many :videos

  validates_presence_of :title
  validates_presence_of :identifier
  validates_presence_of :tvshow

  validates_uniqueness_of :title
  validates_uniqueness_of :identifier

  default_scope { order('"order" ASC') }

end
