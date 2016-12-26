# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pastex,
  ecto_repos: [Pastex.Repo]

# Configures the endpoint
config :pastex, Pastex.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iFoPo4veBqnP7MgUqiFTvjAqo4hahbzUdbdN/obP5lcz0mgbqCYJnTE5ZmdLADYw",
  render_errors: [view: Pastex.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pastex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
