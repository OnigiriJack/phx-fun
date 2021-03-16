defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # redirect(conn, to: "/redirect_test")
    conn
    # |> send_resp(202, "hlkhjkldfbgkjldsfglb")
    # |> put_flash(:info, "WElcome to phoencix")
    # |> put_flash(:error, "error time")
    # |> redirect(to: Routes.page_path(conn, :redirect_test))

    # render(conn, :index)
    # conn
    # |> put_layout("admin.html")
    |> render("index.html")
  end

  def redirect_test(conn, _params) do
    render(conn, "index.html")
  end
end
