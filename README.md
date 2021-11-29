### Setting Up Database
Run migrations and the seed file with: 

$ bundle exec db:migrate db:seed

That'll start the data with my original seed data

### Running The Database

You can start your server with:

$ bundle exec rake server

### Models
Author Model has_many
Book model belongs_to

### Application Controller
Gives paths for the front end to send get,post,delete requests to the database.
