defmodule Buurgr.UserView do
  use Buurgr.Web, :view

  alias Buurgr.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
