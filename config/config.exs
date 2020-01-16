# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :super_fast,
  ecto_repos: [SuperFast.Repo]

# Configures the endpoint
config :super_fast, SuperFastWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SaR3LhTGHb6MZo1qb2K+1RTuDTPJb1NRYmCuZIjOaakFkHN7jCJa5S0oMwLtu29g",
  render_errors: [view: SuperFastWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: SuperFast.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
