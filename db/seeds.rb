# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

OrderItem.all.destroy_all
Order.all.destroy_all
Product.all.destroy_all

puts "-----------------------------------------------------"
puts "creating the admin and some sample users"
  User.create(email: "doncho@mokaflor.com", password: "123123")
  User.create(email: "penev@mokaflor.com", password: "123123")
  User.create(email: "d.penev@mokaflor.com", password: "123123", admin: true)
  User.create(email: "b.d.penev@gmail.com", password: "123123", admin: true)
puts "done with creating users"
puts "-----------------------------------------------------"

puts "-----------------------------------------------------"
puts "creating some accounts"
  Account.all.destroy_all
  account1 = Account.new
  account1.user = User.all[0]
  account1.save
  account2 = Account.new
  account2.user = User.all[1]
  account2.save
  account3 = Account.new
  account3.user = User.all[2]
  account3.save
  account4 = Account.new
  account4.user = User.all[3]
  account4.save
puts "done creating the accounts"
puts "-----------------------------------------------------"

puts "-----------------------------------------------------"
puts "creating some orders"

  order1 = Order.new
  order1.account = Account.all[0]
  order1.save
  order2 = Order.new
  order2.account = Account.all[1]
  order2.save
  order3 = Order.new
  order3.account = Account.all[2]
  order3.save
  order4 = Order.new
  order4.account = Account.all[3]
  order4.save
puts "finished creating the orders"
puts "-----------------------------------------------------"

puts "-----------------------------------------------------"
puts "creating the database of MKFLR coffees"

  Product.create(name:"Chiaroscuro 100 percent Arabica blend",
                 webcolour:"#D3C48E",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro оригинални кафе рецепти")

  Product.create(name:"Decaffeinato CO2",
                 webcolour:"#D7CABC",
                 size: 250,
                 price: 20.22,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro оригинални кафе рецепти")

  Product.create(name:"Chiaroscuro con JBM",
                 webcolour:"#0223A0",
                 size: 250,
                 price: 20.22,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro оригинални кафе рецепти")

  Product.create(name:"Costarica Tournon",
                 webcolour:"#17C2AD",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro кафе с определен произход")

  Product.create(name:"Guatemala Antigua pastores",
                 webcolour:"#4693CA",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro кафе с определен произход")

  Product.create(name:"Mexico Altura",
                 webcolour:"#0E6F25",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro кафе с определен произход")

  Product.create(name:"Santo Domingo Barahona",
                 webcolour:"#09EFEF",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro кафе с определен произход")

  Product.create(name:"Tanzania Robusta AB",
                 webcolour:"#D9050B",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro кафе с определен произход")

  Product.create(name:"Galapagos Organic San Cristobal",
                 webcolour:"#E6462C",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro кафе отгледано в екзотични кафе ферми")

  Product.create(name:"Nepal Mount Everest Supreme organic",
                 webcolour:"#DCE4EA",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro кафе отгледано в екзотични кафе ферми")

  Product.create(name:"Puertorico Yauco Selecto",
                 webcolour:"#F686B1",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro най-ценните кафе сортове от Света")

  Product.create(name:"Brazil Caracolito",
                 webcolour:"#611D1C",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro специални кафе зърна")

  Product.create(name:"Mokaflor Bio Organic 100 Arabica",
                 webcolour:"#2E7C4E",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Mokaflor оранични и био кафе бленди")

  Product.create(name:"Chiaroscuro Chocolate brandy",
                 webcolour:"#662000",
                 size: 250,
                 price: 15.66,
                 product_pic: "choco_brandy.png",
                 category: "Chiaroscuro Flavoured Coffee - Кафе с изразен вкус")

  Product.create(name:"Chiaroscuro Vaniglia",
                 webcolour:"#FFFF42",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Chiaroscuro Flavoured Coffee - Кафе с изразен вкус")

  Product.create(name:"Chiaroscuro Irish cream",
                 webcolour:"#137700",
                 size: 250,
                 price: 15.66,
                 product_pic: "irish_cream.png",
                 category: "Chiaroscuro Flavoured Coffee - Кафе с изразен вкус")

  Product.create(name:"Chiaroscuro Hazelnut",
                 webcolour:"#F94F0C",
                 size: 250,
                 price: 15.66,
                 product_pic: "hazel.png",
                 category: "Chiaroscuro Flavoured Coffee - Кафе с изразен вкус")

  Product.create(name:"Chiaroscuro Hazelnut and Cinammon",
                 webcolour:"#002977",
                 size: 250,
                 price: 15.66,
                 product_pic: "cinn_hazel.png",
                 category: "Chiaroscuro Flavoured Coffee - Кафе с изразен вкус")

  Product.create(name:"Chiaroscuro Chocolate",
                 webcolour:"#CE1010",
                 size: 250,
                 price: 15.66,
                 product_pic: "choco.png",
                 category: "Chiaroscuro Flavoured Coffee - Кафе с изразен вкус")

  Product.create(name:"100 percent Dolce Arabica - Black 18pcs",
                 webcolour:"#212121",
                 size: 250,
                 price: 20.22,
                 product_pic: "vanille.png",
                 category: "Mokaflor E.S.E. Дози")

  Product.create(name:"50/50 Gran Crema 18pcs",
                 webcolour:"#D6321F",
                 size: 250,
                 price: 20.22,
                 product_pic: "vanille.png",
                 category: "Mokaflor E.S.E. Дози")

  Product.create(name:"Decaf 18pcs",
                 webcolour:"#849AC2",
                 size: 250,
                 price: 20.22,
                 product_pic: "vanille.png",
                 category: "Mokaflor E.S.E. Дози")

  Product.create(name:"Organic Bio Paper Pods 18pcs",
                 webcolour:"#377427",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Mokaflor E.S.E. Дози")

  Product.create(name:"100 Dolce Arabica - Black 10 porz",
                 webcolour:"#3E3D41",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Mokaflor Капсули за Nespresso© машина")

  Product.create(name:"50/50 Gran Crema - 10 porz",
                 webcolour:"#B45043",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Mokaflor Капсули за Nespresso© машина")

  Product.create(name:"Decaf - 10 porz",
                 webcolour:"#899DC2",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Mokaflor Капсули за Nespresso© машина")

  Product.create(name:"Brazil Alta Mogiana Franca Gr 2 17/18 - 10 porz",
                 webcolour:"#48462D",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Mokaflor Капсули за Nespresso© машина")

  Product.create(name:"India Monsonato Parchment Karnataka - 10 porz",
                 webcolour:"#493A30",
                 size: 250,
                 price: 15.66,
                 product_pic: "vanille.png",
                 category: "Mokaflor Капсули за Nespresso© машина")

puts "finished creting the database of MKFLR coffees"
puts "-----------------------------------------------------"

puts "-----------------------------------------------------"
puts "creating some order_items to populate the orders"
  oi1 = OrderItem.new
  oi1.product = Product.all.sample
  oi1.order = Order.all[0]
  oi1.save
  oi2 = OrderItem.new
  oi2.product = Product.all.sample
  oi2.order = Order.all[1]
  oi2.save
  oi3 = OrderItem.new
  oi3.product = Product.all.sample
  oi3.order = Order.all[2]
  oi3.save
  oi4 = OrderItem.new
  oi4.product = Product.all.sample
  oi4.order = Order.all[0]
  oi4.save
  oi5 = OrderItem.new
  oi5.product = Product.all.sample
  oi5.order = Order.all[1]
  oi5.save
puts "done populating the sample orders with order_items"
puts "-----------------------------------------------------"





