# Inventory Manager
The Inventory Manager app was created using HTML, Ruby on Rails, CSS/SASS, Ember, Javascript, Handlebars and Bootstrap. This app allows users to create an inventory of items, track if the items are running low, put them in order list, and add them back to inventory list.

## Link to Frontend Repo: https://github.com/pnguyen44/inventory-manager

## Link to Frontend Deployed Site: https://pnguyen44.github.io/inventory-manager/

## ERD
Link to ERD: https://i.imgur.com/6Q5SljZ.png

## Development Process
The first thing I did was create a user story and wireframe to map out my inventory  app. Afterward I created the model for the Category and Item and added their relationship association with each other, as well the User model. In addition, I updated the controller and serializers and wrote curl scripts. When I finished developing the back-end scripts, I wrote html and css and used Ember in the front-end. I used Ruby on Rails in the backend.


## API end-points

| Verb   | URI Pattern             | Controller#Action    |
|--------|-------------------------|----------------------|
| POST   | `/sign-up`              | `users#signup`       |
| POST   | `/sign-in`              | `users#signin`       |
| DELETE | `/sign-out/:id`         | `users#signout`      |
| PATCH  | `/change-password/:id`  | `users#changepw`     |
| GET    | `/categories`           | `categories#index`   |
| POST   | `/categories`           | `categories#create`  |
| GET    | `/categories/:id`       | `categories#show`    |
| PATCH  | `/categories/:id`       | `categories#update`  |
| DELETE | `/categories/:id`       | `categories#destroy` |
| GET    | `/items`                | `item#index`         |
| POST   | `/items`                | `item#create`        |
| GET    | `/items/:id`            | `item#show`          |
| PATCH  | `/items/:id`            | `item#update`        |
| DELETE | `/items/:id`            | `item#destroy`       |

## Technologies Used
- Ruby on Rails
- Javascript
- Ember
- Handlebars
- Bootstrap
- HTML
- CSS/ SASS

## Resources Used
- MDN
- Github
- Stack Overflow
- Ember Documentation

## Unsolved Problems and Future Plans
I would like to show the “Inventory” view when the user signs in.
