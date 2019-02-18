defmodule Phoenix15MinutesBlog.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_15_minutes_blog,
    adapter: Ecto.Adapters.Postgres
end
