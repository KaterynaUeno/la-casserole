# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Booking.destroy_all
User.destroy_all
Chef.destroy_all

puts "Creating user"

user1 = User.create!(
  email: "bernard@gmail.com",
  password: "123456",
  first_name: "Bernard",
  last_name: "Garnier",
)

puts "Creating chefs"
chef_french = Chef.create!(
  speciality: "French cuisine",
  experience: "Worked mostly as a freelance cook, and was not employed by any particular household",
  user: user1,
  price: 102.5,
  address: "2a Garrick Street, London WC2E 9BH"
)

file1 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/french0_rtqe9m.jpg')
file2 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/french1_tcbreb.jpg')
file3 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/french2_cwgntm.jpg')
file4 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/french3_lhf1oq.jpg')

chef_french.photos.attach(io: file1, filename: '1.jpg', content_type: 'image/jpg')
chef_french.photos.attach(io: file2, filename: '2.jpg', content_type: 'image/jpg')
chef_french.photos.attach(io: file3, filename: '3.jpg', content_type: 'image/jpg')
chef_french.photos.attach(io: file4, filename: '4.jpg', content_type: 'image/jpg')

chef_french.save!

user2 = User.create!(
  email: "riku@gmail.com",
  password: "123456",
  first_name: "Riku",
  last_name: "Yamamoto"
)

chef_japanese = Chef.create!(
  speciality: "Japanese cuisine",
  experience: "Prepared traditional Japanese sushi rice, chopping, slicing, and filleting various kinds of fish, and placing orders for supplies as needed. Lived and worked in London last 3 years.",
  user: user2,
  price: 98.7,
  address: "73 St James's Street, London SW1A 1PH"
)

file1 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/japanese0_bctrjr.jpg')
file2 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/japanese1_bfdgx1.jpg')
file3 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/japanese2_ll7fvp.jpg')
file4 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/japanese3_drvmhz.jpg')

chef_japanese.photos.attach(io: file1, filename: '1.jpg', content_type: 'image/jpg')
chef_japanese.photos.attach(io: file2, filename: '2.jpg', content_type: 'image/jpg')
chef_japanese.photos.attach(io: file3, filename: '3.jpg', content_type: 'image/jpg')
chef_japanese.photos.attach(io: file4, filename: '4.jpg', content_type: 'image/jpg')

chef_japanese.save!

user3 = User.create!(
  email: "zihao@gmail.com",
  password: "123456",
  first_name: "Zihao",
  last_name: "Cheung"
)

chef_chinese = Chef.create!(
  speciality: "Chinese cuisine",
  experience: "Chef and owner of five restaurants. He is the former head chef of the three Michelin star restaurant Le Jardin des Sens in France. He is known for his Octo-philosophy of eight elements which make up his dishes. In 2017, his Michelin 2-star eponymous Restaurant André was named the Best Restaurant in Singapore, and the second-best in Asia by Restaurant magazine",
  user: user3,
  price: 46.4,
  address: "10 Lincoln Street, London SW3 2TS"
)

file1 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/chinise0_nz5lox.jpg')
file2 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897929/la-casserole/chinese2_ebl2ft.jpg')
file3 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897929/la-casserole/chinese3_qyd1fd.jpg')
file4 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897928/la-casserole/chinese4_urpkjt.jpg')

chef_chinese.photos.attach(io: file1, filename: '1.jpg', content_type: 'image/jpg')
chef_chinese.photos.attach(io: file2, filename: '2.jpg', content_type: 'image/jpg')
chef_chinese.photos.attach(io: file3, filename: '3.jpg', content_type: 'image/jpg')
chef_chinese.photos.attach(io: file4, filename: '4.jpg', content_type: 'image/jpg')

chef_chinese.save!

user4 = User.create!(
  email: "min-joon@gmail.com",
  password: "123456",
  first_name: "Min-joon",
  last_name: "Hak"
)

chef_korean = Chef.create!(
  speciality: "Korean cuisine",
  experience: "Gained prominence as the creator of the gourmet Korean-Mexican taco truck Kogi. Choi is a chef who is celebrated for 'food that isn't fancy' and is known as one of the founders of the gourmet food truck movement. In 2019, Choi began presenting a cooking series on Netflix with Jon Favreau titled The Chef Show.",
  user: user4,
  price: 34.78,
  address: "10 Greek Street, London W1D 4DH"
)

file1 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897916/la-casserole/korean0_mqblqm.jpg')
file2 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897929/la-casserole/korean2_xffsas.jpg')
file3 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897929/la-casserole/korean3_mh4uog.jpg')
file4 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897928/la-casserole/korean4_acizm1.jpg')

chef_korean.photos.attach(io: file1, filename: '1.jpg', content_type: 'image/jpg')
chef_korean.photos.attach(io: file2, filename: '2.jpg', content_type: 'image/jpg')
chef_korean.photos.attach(io: file3, filename: '3.jpg', content_type: 'image/jpg')
chef_korean.photos.attach(io: file4, filename: '4.jpg', content_type: 'image/jpg')

chef_korean.save!

user5 = User.create!(
  email: "advik@gmail.com",
  password: "123456",
  first_name: "Advik",
  last_name: "Devi"
)

chef_indian = Chef.create!(
  speciality: "Indian cuisine",
  experience: "Indian chef, restaurateur, cookbook writer, filmmaker and humanitarian. He is one of the judges of Star Plus series MasterChef India.",
  user: user5,
  price: 25.8,
  address: "73 Brick Lane, London E1 6QL"
)

file1 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/indian0_r4iztq.jpg')
file2 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897928/la-casserole/indian2_br7vmy.jpg')
file3 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897928/la-casserole/indian3_kflq6w.jpg')
file4 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897928/la-casserole/indian4_dputcc.jpg')

chef_indian.photos.attach(io: file1, filename: '1.jpg', content_type: 'image/jpg')
chef_indian.photos.attach(io: file2, filename: '2.jpg', content_type: 'image/jpg')
chef_indian.photos.attach(io: file3, filename: '3.jpg', content_type: 'image/jpg')
chef_indian.photos.attach(io: file4, filename: '4.jpg', content_type: 'image/jpg')

chef_indian.save!


user6 = User.create!(
  email: "piotr@gmail.com",
  password: "123456",
  first_name: "Piotr",
  last_name: "Kowalski"
)

chef_eastern_european = Chef.create!(
  speciality: "Eastern-european cuisine",
  experience: "Armed with the best classical training you could ask for and a repertoire of eastern European recipes most other chefs don’t dabble with makes him one of the UK’s most exciting chefs. He cooks small plates using a wood-fired oven and live fire cooking for just five people at a time, using ingredients exclusively from local farmers with plenty of homemade charcuterie, smoked fish, butter, bread, liqueurs and ferments.",
  user: user6,
  price: 42.3,
  address: "29 Westferry Circus, London E14 8RR"
)

file1 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/easteu0_i3rurv.jpg')
file2 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897928/la-casserole/east-european2_lqiizy.jpg')
file3 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897928/la-casserole/east-european3_ldlx6s.jpg')
file4 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897928/la-casserole/east-european4_cyamaf.jpg')

chef_eastern_european.photos.attach(io: file1, filename: '1.jpg', content_type: 'image/jpg')
chef_eastern_european.photos.attach(io: file2, filename: '2.jpg', content_type: 'image/jpg')
chef_eastern_european.photos.attach(io: file3, filename: '3.jpg', content_type: 'image/jpg')
chef_eastern_european.photos.attach(io: file4, filename: '4.jpg', content_type: 'image/jpg')

chef_eastern_european.save!

puts "Finishing seeding!"
