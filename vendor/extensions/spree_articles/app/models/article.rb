class Article < ActiveRecord::Base
  has_many :images, :as => :viewable, :order => :position, :dependent => :destroy
  belongs_to :user
  image_accessor :attachment

end
