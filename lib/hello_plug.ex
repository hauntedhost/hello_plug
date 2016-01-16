defmodule HelloPlug do
  def init(default_opts) do
    IO.puts "Booting HelloPlug ..."
    default_opts
  end

  def call(conn, _opts) do
    IO.puts("Saying Hello!")
    conn
    |> Plug.Conn.put_resp_header("Server", "Plug")
    |> Plug.Conn.send_resp(200, "Hello, world!")
  end
end
