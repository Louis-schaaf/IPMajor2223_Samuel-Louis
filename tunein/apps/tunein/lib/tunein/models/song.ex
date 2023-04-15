defmodule Tunein.Models.Song do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tunein.Models.Playlist
  schema "song" do
    field :artist, :string
    field :songname, :string
    belongs_to :playlist, Playlist, foreign_key: :playlist_id
  end

  @doc false
  def changeset(song, attrs) do
    song
    |> cast(attrs, [:songname, :artist])
    |> validate_required([:songname, :artist])
  end
end
