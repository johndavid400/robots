if Spree::Config.instance

  # this initializer is used to change the location of the main logo and admin logo
  Spree::Config.set(:logo => 'admin/bg/logo.png')
  Spree::Config.set(:admin_interface_logo => 'admin/bg/logo.png')
end

