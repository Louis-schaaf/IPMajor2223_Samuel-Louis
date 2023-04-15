defmodule Tunein.Repo.Migrations.CreateSongs do
  use Ecto.Migration

  def change do
    create table(:song) do
      add :songname, :string
      add :artist, :string
      add :playlist_id, references(:playlist)
    end
    create index(:song, [:playlist_id])
  end
end
