defmodule Tunein.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Tunein.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Tunein.PubSub}
      # Start a worker by calling: Tunein.Worker.start_link(arg)
      # {Tunein.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Tunein.Supervisor)
  end
end
