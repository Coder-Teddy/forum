defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def user(conn, _params) do
    # IO.puts("this is user page")
    user = [
      %{id: 1, name: "kunal", email: "kunal@gmail.com"},
      %{id: 2, name: "rishab", email: "rishab@gmail.com"},
      %{id: 3, name: "nav", email: "nav@gmail.com"}
    ]

    json(conn, %{ user: user})
    # render(conn, :user, user: user, layout: false)
  end
end
