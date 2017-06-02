user = User.create(username: "nick", email: "nick@gmail.com", password: "123")
dog1 = user.dogs.build(name: "Rocko").save
dog2 = user.dogs.build(name: "Sasha").save

activity1 = user.activities.build(name: "walk", duration: 20)
activity1.dogs << dog1
activity1.dogs << dog2
activity1.save
