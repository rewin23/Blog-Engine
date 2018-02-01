defmodule BlogEngine.SessionController do
  use BlogEngine.Web, :controller
  alias BlogEngine.User

  def new(conn, _params) do
    render conn, "new.html", changeset: User.changeset(%User{})
  end
end