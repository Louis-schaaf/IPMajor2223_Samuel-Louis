defmodule Tunein.Models.Playlist do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tunein.Models.Song

  schema "playlist" do
    field :title, :string
    has_many :song, Song
  end

  @doc false
  def changeset(playlist, attrs) do
    playlist
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
