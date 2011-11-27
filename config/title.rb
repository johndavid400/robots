if Spree::Config.instance
  # this initializer is used to change the title of the site
  Spree::Config.set(:site_name => 'Prototype Robotics')
end
