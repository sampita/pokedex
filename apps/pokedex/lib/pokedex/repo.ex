defmodule Pokedex.Repo do
  use Ecto.Repo,
    otp_app: :pokedex,
    adapter: Ecto.Adapters.Postgres
end
