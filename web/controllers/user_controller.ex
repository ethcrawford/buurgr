defmodule Buurgr.UserController do
  use Buurgr.Web, :controller

  alias Buurgr.User

  def index(conn, _params) do
    users = Repo.all(Buurgr.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(Buurgr.User, id)
    render conn, "show.html", user: user
  end

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, "new.html", changeset: changeset
  end
end
