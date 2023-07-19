User.destroy_all

User.create(email: "test@mail.com", password: "123456", password_confirmation: "123456")
User.create(email: "team2@mail.com", password: "qwerty", password_confirmation: "qwerty")