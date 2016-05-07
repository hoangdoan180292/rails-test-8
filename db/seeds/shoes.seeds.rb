after :brands do
  puts "===== Create Shoes ====="
  Shoe.destroy_all
  ActiveRecord::Base.connection.execute(
    "ALTER SEQUENCE shoes_id_seq RESTART WITH 1"
  )

  new_balance           = Brand.find_by_title('New Balance')
  nike                  = Brand.find_by_title('Nike')
  adidas                = Brand.find_by_title('Adidas')

  file_MX608V4_path     = "#{Rails.root}/app/assets/images/shoe/image-01.png"
  file_MX608V5_path     = "#{Rails.root}/app/assets/images/shoe/image-02.png"
  file_MX608V6_path     = "#{Rails.root}/app/assets/images/shoe/image-03.png"
  file_nike1_path       = "#{Rails.root}/app/assets/images/shoe/image-04.png"
  file_nike2_path       = "#{Rails.root}/app/assets/images/shoe/image-05.png"
  file_nike3_path       = "#{Rails.root}/app/assets/images/shoe/image-06.png"
  file_nike4_path       = "#{Rails.root}/app/assets/images/shoe/image-07.png"
  file_adidas1_path     = "#{Rails.root}/app/assets/images/shoe/image-08.png"
  file_adidas2_path     = "#{Rails.root}/app/assets/images/shoe/image-09.png"
  file_adidas3_path     = "#{Rails.root}/app/assets/images/shoe/image-10.png"
  file_adidas4_path     = "#{Rails.root}/app/assets/images/shoe/image-11.png"

  new_balance.shoes.create([
    {
      name: "New Balance 1",
      sku: "MX608V4",
      price: 77.99,
      picture: File.open(file_MX608V4_path),
    },
    {
      name: "New Balance 2",
      sku: "MX608V5",
      price: 125,
      picture: File.open(file_MX608V5_path),
    },
    {
      name: "New Balance 3",
      sku: "MX608V6",
      price: 74.99,
      picture: File.open(file_MX608V6_path),
    },
    {
      name: "New Balance 4",
      sku: "MX608V6",
      price: 74.99,
      picture: File.open(file_MX608V6_path),
    }
  ])

  nike.shoes.create([
    {
      name: "Nike 1",
      sku: "nike1",
      price: 62.99,
      picture: File.open(file_nike1_path),
    },
    {
      name: "Nike 2",
      sku: "nike2",
      price: 103.99,
      picture: File.open(file_nike2_path),
    },
    {
      name: "Nike 3",
      sku: "nike3",
      price: 99.99,
      picture: File.open(file_nike3_path),
    },
    {
      name: "Nike 4",
      sku: "nike4",
      price: 74.99,
      picture: File.open(file_nike4_path),
    }
  ])

  adidas.shoes.create([
    {
      name: "Adidas 1",
      sku: "adidas1",
      price: 62.99,
      picture: File.open(file_adidas1_path),
    },
    {
      name: "Adidas 2",
      sku: "adidas2",
      price: 103.99,
      picture: File.open(file_adidas2_path),
    },
    {
      name: "Adidas 3",
      sku: "adidas3",
      price: 99.99,
      picture: File.open(file_adidas3_path),
    },
    {
      name: "Adidas 5",
      sku: "adidas4",
      price: 74.99,
      picture: File.open(file_adidas4_path),
    }
  ])
end