defmodule Tunein.Repo do
  use Ecto.Repo,
    otp_app: :tunein,
    adapter: Ecto.Adapters.Postgres
end
