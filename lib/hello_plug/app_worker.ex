defmodule HelloPlug.AppWorker do
  def start_link do
    port = System.get_env("PORT") |> String.to_integer
    IO.puts("Starting Cowboy on port #{port} ...")
    Plug.Adapters.Cowboy.http(HelloPlug.HelloWorld, [], port: port)
  end
end
