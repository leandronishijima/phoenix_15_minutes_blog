use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_15_minutes_blog, Phoenix15MinutesBlogWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phoenix_15_minutes_blog, Phoenix15MinutesBlog.Repo,
  username: "postgres",
  password: "postgres",
  database: "phoenix_15_minutes_blog_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
