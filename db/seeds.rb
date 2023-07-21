User.destroy_all
Property.destroy_all

p "create users"

User.create(email: "test@mail.com", password: "123456", password_confirmation: "123456", role:"HomeSeeker")
User.create(email: "team2@mail.com", password: "qwerty", password_confirmation: "qwerty", role: "Landlord")

Property.create(
  operation_type: 'Sale',
  address: 'Prueba Sale',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2,
  active: false
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Sale',
  address: 'Calle Ficticia 123',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2,
  active: false
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Sale',
  address: 'Calle Ficticia 123',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2,
  active: false
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Rent',
  address: 'Calle Ficticia prueba Rent',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Sale',
  address: 'Calle Ficticia 123',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Sale',
  address: 'Calle Ficticia 123',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Sale',
  address: 'Calle Ficticia 123',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Sale',
  address: 'Calle Ficticia 123',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Sale',
  address: 'Calle Ficticia 123',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Sale',
  address: 'Calle Ficticia 123',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Rent',
  address: 'Calle Ficticia 123',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Rent',
  address: 'Calle Ficticia 123',
  price: 250000,
  montly_rent: 1200,
  maintanance: 200,
  property_type: 'Casa',
  bedrooms: 3,
  bathrooms: 2,
  area: '150 m²',
  pets: true,
  about: 'Esta es una propiedad de ejemplo para la venta.',
  user_id: 2
) do |property|
  property.photo.attach(io: File.open('db/images/depa1.png'), filename: 'depa1.png')
end

Property.create(
  operation_type: 'Rent',
  address: 'Avenida Imaginaria 456',
  price: nil,
  montly_rent: 1500,
  maintanance: 100,
  property_type: 'Apartamento',
  bedrooms: 2,
  bathrooms: 1,
  area: '100 m²',
  pets: false,
  about: 'Apartamento en alquiler, excelente ubicación.',
  user_id: 2
) do |property|
  property.photo.attach(io: File.open('db/images/depa2.png'), filename: 'depa2.png')
end


p "create properties"
