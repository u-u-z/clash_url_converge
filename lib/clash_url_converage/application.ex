defmodule ClashUrlConverge.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: ClashUrlConverge, options: [port: 4000]}
    ]

    opts = [strategy: :one_for_one, name: ClashUrlConverge.Supervisor]
    # print server info
    IO.inspect(children)
    Supervisor.start_link(children, opts)
  end
end
