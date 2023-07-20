User.destroy_all
Property.destroy_all

p "create users"

User.create(email: "test@mail.com", password: "123456", password_confirmation: "123456")
User.create(email: "team2@mail.com", password: "qwerty", password_confirmation: "qwerty", role: "Landlord")

Property.create(
  operation_type: 'Venta',
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
  user_id: 1
)

Property.create(
  operation_type: 'Alquiler',
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
)

p "create properties"
