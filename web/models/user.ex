defmodule Buurgr.User do
  use Buurgr.Web, :model

  schema "users" do
    field :name
    field :username
    field :email
    field :password, virtual: true
    field :password_hash

    timestamps()
  end

  def changeset(user, params \\ %{}) do
    user
    |> cast(params, [:name, :username, :email, :password_hash])
    |> validate_required([:username, :email, :password_hash])
    |> validate_length(:username, min: 3, max: 20)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:username, :email)
  end
end
