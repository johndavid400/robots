require 'spree_core'
require 'spree_articles/engine'
require 'spree_articles_hooks'

module Articles
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate

      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      # insert classes here

#      Image.class_eval do
#        belongs_to :article
#      end


    end


  config.to_prepare &method(:activate).to_proc

  end

end
