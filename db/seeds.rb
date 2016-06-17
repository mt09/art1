# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

x = User.new
x.email = "q@q.com"
x.password = "qwerasdf"
x.password_confirmation = "qwerasdf"
x.is_admin = true
x.save

y = User.new
y.email = "w@w.com"
y.password = "qwerasdf"
y.password_confirmation = "qwerasdf"
y.is_admin = false
y.save

z = User.new
z.email = "a@a.com"
z.password = "qwerasdf"
z.password_confirmation = "qwerasdf"
z.is_admin = false
z.save

m = Product.new
m.title = "Vespa"
m.description = "nice ride"
m.quantity = 10
m.price = 6500
m.save

n = Product.new
n.title = "SCR950"
n.description = "Coolest ride ever"
n.quantity = 2
n.price = 8700
n.save

o = Product.new
o.title = "WR450F"
o.description = "It's awesome!!"
o.quantity = 8
o.price = 8990
o.save

p = Product.new
p.title = "XSR900"
p.description = "Powerful monster"
p.quantity = 6
p.price = 9490
p.save
