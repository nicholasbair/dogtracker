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

#### From Study Group
helpers block in application controller is best practice vs. modules
current_user.posts.build(params) #=> automatically create association
if a form post fails, render instead of redirect to use the errors.messages
before hook
```
  before do
    if !logged_in
      redirect '/index'
    end
  end
```
