NgProc API is a Ruby on Rails Json API that uses JWT (Json Web Token) as token-based authentication system.

- [Installing](#installing)
- [Technologies](#technologies)
- [Other Notes](#other-notes)
- [License](#license)

## Installing

Installing the dependencies:

```bash
bundle install

```

Setting up the database:

```bash
rails db:create
rails db:migrate
rails db:seed

```

The application has an action at AutheticationController#auth to make the authentication. Use the admin_user (email: admin@admin.com, password: 123456) to get the JWT.

## Technologies

* Ruby: 2.3.3
* Rails: 5.0.0.1
* MySQL: 5.7.17
* Devise
* JWT
* RSpec

## Other Notes

## License

MIT