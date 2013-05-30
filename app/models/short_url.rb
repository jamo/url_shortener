class ShortUrl < ActiveRecord::Base
  attr_accessible :key, :url
  validates_uniqueness_of :key
  validates_presence_of :key, :url

  def to_param
    self.key
  end

  def self.find(id)
    find_by_key(id)
  end
end
