# Pokedex
_An umbrella application using Elixir, Phoenix, Typescript, and React_


## Initial Setup:
- If you do not have **Docker Compose** installed already, [install it](https://docs.docker.com/compose/install/) to be able to run a PostgreSQL server for our Phoenix app. There are other ways to do this, but this way it is easy to start the server up and deal with service dependencies.

- Run the following terminal commands:

```

  ** Clone down repo **
  $ git clone [SSH-KEY]
  
  ** Navigate into project directory **
  $ cd pokedex
  
  ** Run Postgres in the background **
  $ docker-compose up -d

  ** Create the database **
  $ mix ecto.create

  ** Run the Phoenix application **
  $ mix phx.server

```

## Running the App Locally After Initial Setup is Complete:

```
  ** Run Postgres in the background **
  $ docker-compose up -d

  ** Run the Phoenix application **
  $ mix phx.server

```
