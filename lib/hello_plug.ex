defmodule HelloPlug do
  def init(default_opts) do
    IO.puts "Booting HelloPlug ..."
    default_opts
  end

  def call(conn, _opts) do
    IO.puts("Passing to router ...")
    route(conn.method, conn.path_info, conn |> with_headers)
  end

  def route("GET", ["hello"], conn) do
    IO.puts("/hello")
    conn |> Plug.Conn.send_resp(200, "Hello, world!")
  end

  def route("GET", ["cats", cat_id], conn) do
    IO.puts("/cat/#{cat_id}")
    conn |> Plug.Conn.send_resp(200, "You requested cat #{cat_id}")
  end

  def route(_, _, conn) do
    conn |> Plug.Conn.send_resp(404, "Not found.")
  end

  defp with_headers(conn) do
    conn |> Plug.Conn.put_resp_header("Server", "Plug")
  end
end
