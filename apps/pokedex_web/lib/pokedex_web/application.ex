defmodule PokedexWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      PokedexWeb.Telemetry,
      # Start the Endpoint (http/https)
      PokedexWeb.Endpoint
      # Start a worker by calling: PokedexWeb.Worker.start_link(arg)
      # {PokedexWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PokedexWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PokedexWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
