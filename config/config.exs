# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blogEngine,
  ecto_repos: [BlogEngine.Repo]

# Configures the endpoint
config :blogEngine, BlogEngine.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XLBn+NZ8exbPxDbC0+joxg6y/s916g6LHH8+QoIiT+xpB7aor9qBM/6JkQpFj1IF",
  render_errors: [view: BlogEngine.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BlogEngine.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
