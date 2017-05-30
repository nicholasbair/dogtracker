# Notes

## As a dog owner I want to be able to:
- CRUD a dog
- CRUD an activity and associate it with a dog(s)
- See a log of all activities (FB feed)
- See activity trends for my dog

## Other crazy ideas:
- Image upload -> Cloudinary
- Find activities near me -> Google Maps API (hiking, dog parks, etc)
- Capture dog's bday or other important date (shots, vet) and warn user when close

### Associations
A user has many dogs
A dog belongs to a user, and has many activities

### User
Username, email, password

### Dog
Name
user_id

### Activity
Name
duration
dog_id
