# Loads seed data out of default dir
Rake::Task["db:load_dir"].invoke( "default" )

u = User.create :email => "jd@jd.com", :password => "password", :password_confirmation => "password"
u.roles << Role.first

a = Article.create :title => "Test Article", :content => "Four score and seven years ago, when our founding forefathers settled in America.", :featured => true
a.images.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "robot.jpg")))

b = Article.create :title => "Test Article 2", :content => "Four score and seven years ago, when our founding forefathers settled in America.", :featured => true
b.images.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "jd.png")))

puts "Default data has been loaded"

