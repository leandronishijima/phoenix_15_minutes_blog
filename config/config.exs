# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_15_minutes_blog,
  ecto_repos: [Phoenix15MinutesBlog.Repo]

# Configures the endpoint
config :phoenix_15_minutes_blog, Phoenix15MinutesBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lfTh1ztVBNMEAnX1CBxDSwSgSRlxx7RWR9SA5qncbcOB20zkq4Ggvy9RtF2KNf8J",
  render_errors: [view: Phoenix15MinutesBlogWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenix15MinutesBlog.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
