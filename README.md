PRD: https://docs.google.com/document/d/1-8NSfF9cndeUqWh_LmLjm931wDgtkM9lyGTUh-GSwlI/edit?usp=sharing

Tech Doc: https://docs.google.com/document/d/1YLfeaWQEScYJPW9LkcrLwW4VWP-W7jVW21gblbhcvZw/edit#heading=h.2kwphvm4pyim

User Guide: 

To start: mix phx.server

To dockerize:

docker-compose build

docker-compose up

Then, push the docker image to AWS ECS Repository for use.

The backend will be listening on localhost:4000

To Unit Test: mix run unit_tests.exs

# ApiExample

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
