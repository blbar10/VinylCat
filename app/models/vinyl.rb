class Vinyl < ActiveRecord::Base

  has_many :vinyl_wikis
  has_many :user_vinyls
  has_many :users, through: :user_vinyls
  

end
