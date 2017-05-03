# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :buurgr,
  ecto_repos: [Buurgr.Repo]

# Configures the endpoint
config :buurgr, Buurgr.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bVuYHuJuPnkZQeNi8gcqeYy+R/LYPKfZdKZ8otohJcMLpaBCVPVLyWSZiTYJp1EP",
  render_errors: [view: Buurgr.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Buurgr.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
