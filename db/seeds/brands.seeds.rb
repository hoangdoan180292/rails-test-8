puts "===== Create Brands ====="
  Brand.destroy_all
  ActiveRecord::Base.connection.execute(
    "ALTER SEQUENCE brands_id_seq RESTART WITH 1"
  )

  Brand.create([
    { title: 'New Balance' },
    { title: 'Nike' },
    { title: 'Adidas' },
    { title: 'Puma' },
    { title: 'Fila' },
    { title: 'ASICS' }
  ])
puts "===== End ====="