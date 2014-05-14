class Vinyl < ActiveRecord::Base

  has_many :list_items
  has_many :vinyl_wikis

end
