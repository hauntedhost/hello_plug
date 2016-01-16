defmodule HelloPlug.HelloWorld do
  import Plug.Conn
  use Router

  def route("GET", [], conn) do
    IO.puts("GET /")
    conn |> send_resp(200, "Hello, world!")
  end

  def route("GET", ["hello", thing], conn) do
    IO.puts("GET /hello/#{thing}")
    conn |> send_resp(200, "Hello, #{thing}!")
  end

  def route("GET", ["cats", cat_id], conn) do
    IO.puts("GET /cat/#{cat_id}")
    conn |> send_resp(200, "You requested cat #{cat_id}")
  end

  def route(method, path, conn) do
    IO.puts("#{String.upcase(method)} /#{path}")
    conn |> send_resp(404, "Not found.")
  end
end
