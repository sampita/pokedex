# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :pokedex,
  ecto_repos: [Pokedex.Repo]

config :pokedex_web,
  ecto_repos: [Pokedex.Repo],
  generators: [context_app: :pokedex]

# Configures the endpoint
config :pokedex_web, PokedexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Y+DBw66dVr4OsFM8et0p7X638mmKIVHdwnTZvVAMUbSzrbPVmfg117biA1oJFmto",
  render_errors: [view: PokedexWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Pokedex.PubSub,
  live_view: [signing_salt: "O+bY6SE2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
