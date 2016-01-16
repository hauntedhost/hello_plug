defmodule HelloPlug do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(HelloPlug.AppWorker, [])
    ]

    opts = [strategy: :one_for_one, name: HelloPlug.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
