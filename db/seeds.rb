# Loads seed data out of default dir
Rake::Task["db:load_dir"].invoke( "default" )

u = User.create :email => "jd@jd.com", :password => "password", :password_confirmation => "password"
u.roles << Role.first

Image.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "robot.jpg")))

a = Article.create :title => "Test Article", :content => "Master cleanse helvetica cardigan iphone, food truck cred freegan art party raw denim thundercats keytar mustache dreamcatcher. Master cleanse high life fixie, portland freegan marfa jean shorts. Vegan photo booth raw denim, four loko put a bird on it DIY tofu cred 8-bit mlkshk. Shoreditch Austin hoodie, locavore banksy carles cardigan farm-to-table sustainable ethical skateboard williamsburg sartorial mustache butcher. Portland cred blog, mustache retro biodiesel you probably haven't heard of them. Cosby sweater four loko sustainable blog, butcher keytar mixtape. American apparel wayfarers banksy, sustainable aesthetic butcher quinoa.", :featured => true
a.images.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "robot.jpg")))

b = Article.create :title => "Test Article 2", :content => "Sartorial keffiyeh vice salvia organic, put a bird on it blog chambray seitan 8-bit. Echo park quinoa trust fund mixtape scenester. Readymade butcher 8-bit thundercats marfa raw denim. Fixie wayfarers squid iphone leggings jean shorts. Messenger bag jean shorts fap blog. High life leggings wolf gentrify twee, vice photo booth scenester artisan cosby sweater. VHS iphone brooklyn seitan, you probably haven't heard of them lomo keffiyeh fanny pack yr twee.", :featured => true
b.images.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "jd.png")))

puts"Create Taxons"
s = Taxonomy.create :name => "Products"
t = Taxonomy.create :name => "Projects"

s.taxons.create :name => "Arduinos", :parent_id => s.id
s.taxons.create :name => "Robot kits", :parent_id => t.id

t.taxons.create :name => "robots", :parent_id => t.id
t.taxons.create :name => "remote control", :parent_id => t.id
t.taxons.create :name => "automation", :parent_id => t.id
t.taxons.create :name => "utility", :parent_id => t.id
t.taxons.create :name => "carpentry", :parent_id => t.id
t.taxons.create :name => "electrical", :parent_id => t.id
t.taxons.create :name => "plumbing", :parent_id => t.id
t.taxons.create :name => "painting", :parent_id => t.id
t.taxons.create :name => "audio/video", :parent_id => t.id
t.taxons.create :name => "fiberglass", :parent_id => t.id
t.taxons.create :name => "farming", :parent_id => t.id
t.taxons.create :name => "gardening", :parent_id => t.id

c = Product.create :name => "Arduino", :price => "34.99", :permalink => "arduino", :available_on => 3.days.ago
c.images.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "arduino.jpg")))
c.taxons << Taxon.find_by_name("Arduinos")
c.save

d = Product.create :name => "Robot Electronics kit", :price => "199.99", :permalink => "kit", :available_on => 3.days.ago
d.images.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "kit.jpg")))
d.taxons << Taxon.find_by_name("Robot kits")
d.save

e = Project.create :name => "Lawnbot400", :comments => "This is a remote controlled lawnmower, capable of mowing grass for 6-8hrs.", :type => "differential", :build_time => "6 months", :website => "prototyperobotics.com", :weight => "200lbs", :sensors => "none", :microcontroller => "Arduino", :power_source => "24vdc marine deep cycle batteries", :motors => "DC power wheelchair gear motors", :user_id => User.first
e.images.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "robot.jpg")))

f = Project.create :name => "Segbot", :comments => "This is a rideable segway clone", :type => "differential", :build_time => "1 month", :website => "prototyperobotics.com", :weight => "75lbs", :sensors => "gyroscope and accelerometer", :microcontroller => "Arduino", :power_source => "24vdc SLA batteries", :motors => "DC power wheelchair gear motors", :user_id => User.first
f.images.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "robot.jpg")))

g = Project.create :name => "Explorer Bot", :comments => "This is a rideable segway clone", :type => "differential", :build_time => "1 month", :website => "prototyperobotics.com", :weight => "75lbs", :sensors => "gyroscope and accelerometer", :microcontroller => "Arduino", :power_source => "24vdc SLA batteries", :motors => "DC power wheelchair gear motors", :user_id => User.first
g.images.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "robot.jpg")))

h = Project.create :name => "Line Bot", :comments => "This is a rideable segway clone", :type => "differential", :build_time => "1 month", :website => "prototyperobotics.com", :weight => "75lbs", :sensors => "gyroscope and accelerometer", :microcontroller => "Arduino", :power_source => "24vdc SLA batteries", :motors => "DC power wheelchair gear motors", :user_id => User.first
h.images.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "robot.jpg")))

j = Project.create :name => "Battle Bot", :comments => "This is a rideable segway clone", :type => "differential", :build_time => "1 month", :website => "prototyperobotics.com", :weight => "75lbs", :sensors => "gyroscope and accelerometer", :microcontroller => "Arduino", :power_source => "24vdc SLA batteries", :motors => "DC power wheelchair gear motors", :user_id => User.first
j.images.create(:attachment => File.open(File.join(Rails.root, "db", "seeds", "images", "robot.jpg")))

puts "Default data has been loaded"

