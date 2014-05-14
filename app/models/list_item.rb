class ListItem < ActiveRecord::Base

  belongs_to :lists
  belongs_to :vinyls

end
