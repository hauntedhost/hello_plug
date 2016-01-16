defmodule HelloPlug.AppWorker do
  def start_link do
    port = System.get_env("PORT") |> String.to_integer
    Plug.Adapters.Cowboy.http(HelloPlug.HelloWorld, [], port: port)
  end
end
