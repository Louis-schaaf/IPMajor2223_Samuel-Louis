defmodule Tunein.Repo.Migrations.CreatePlaylists do
  use Ecto.Migration

  def change do
    create table(:playlist) do
      add :title, :string
    end
  end
end
