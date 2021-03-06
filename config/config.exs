# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_json_api,
  ecto_repos: [PhoenixJsonApi.Repo]

# Configures the endpoint
config :phoenix_json_api, PhoenixJsonApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "t9c7r17z/cqE32HVDDnkuswXJcxAbN5VlguW5DlZydAQGUA5LQGLyGeO1cTpbw7B",
  render_errors: [view: PhoenixJsonApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixJsonApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :format_encoders,
  "json-api": Poison
config :plug, :mimes, %{
  "application/vnd.api+json" => ["json-api"]
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
