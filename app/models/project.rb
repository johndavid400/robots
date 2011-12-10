class Project < ActiveRecord::Base
  has_many :images, :as => :viewable, :order => :position, :dependent => :destroy
  belongs_to :user
end
