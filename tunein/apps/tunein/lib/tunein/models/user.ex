defmodule Tunein.Models.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user" do
    field :username, :string


  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username])
    |> validate_required([:username])
  end
end
