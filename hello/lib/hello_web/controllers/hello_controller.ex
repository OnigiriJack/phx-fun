defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    conn
    |> assign(:messenger, messenger)
    |> assign(:reciever, "Dweeixl")
    |> render("show.html")

    # |> Plug.Conn.assign(:messenger, messenger)

    # render(conn, "show.html", messenger: messenger)
  end
end
