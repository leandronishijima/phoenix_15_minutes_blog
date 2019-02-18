defmodule Phoenix15MinutesBlogWeb.PageController do
  use Phoenix15MinutesBlogWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
