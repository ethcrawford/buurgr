defmodule Buurgr.PageController do
  use Buurgr.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
