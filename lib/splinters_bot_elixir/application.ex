defmodule SplintersBotElixir.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  import Supervisor.Spec

  @impl true
  def start(_type, _args) do
    children = [
      worker(SplintersBotElixir.Robot, [])
      # Starts a worker by calling: SplintersBotElixir.Worker.start_link(arg)
      # {SplintersBotElixir.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SplintersBot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
