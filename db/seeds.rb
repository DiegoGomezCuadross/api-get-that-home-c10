User.destroy_all
Property.destroy_all

p "create users"

User.create(email: "test@mail.com", password: "123456", password_confirmation: "123456")
User.create(email: "team2@mail.com", password: "qwerty", password_confirmation: "qwerty")

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

p "Seeding Favorites Properties"

10.times do
    property = Property.new(user: User.all.sample,
                    property: Property.all.sample
                   )
    if favorite.valid?
        favorite.save
    else
        p favorite.errors.full_messages
    end
end

puts "Completed"

# properties =[
#     { 
#     operation_type: "sale",
#     address: "Miraflores, Lima",
#     price: "2000",
#     property_type: "Apartment",
#     bedrooms: "4",
#     bathrooms: "2",
#     area: "180", 
#     about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survivd not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
#     }
# ]
# properties.each { |property| Property.create(property) }

p "Seeding finished"
