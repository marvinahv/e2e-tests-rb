# Sidetrain features


## Available Features:

### Mentor

#### Signup
- [x] [Mentor can see signup form](features/mentor_can_see_signup_form.feature)
- [ ] Mentor can signup with email and password

#### Login
- [ ] Mentor can login with email and password



## Process to define/test a feature:

1. Create `.feature` files inside the `/features` folder.

2. Run in the terminal:
```shell
spinach --generate
```

3. Make changes.
4. Run in the terminal:
```shell
spinach
```

See more at [Spinach Github site](https://github.com/codegram/spinach).


## Running tests in the database

Eventually, when the test is run, all databse items should be destroyed and then the seed files should be run as to create the test users.


### Seed users

The API has the following users in the seed file:

