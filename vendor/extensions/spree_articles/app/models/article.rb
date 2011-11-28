class Article < ActiveRecord::Base
  has_many :images, :as => :viewable, :order => :position, :dependent => :destroy
end
