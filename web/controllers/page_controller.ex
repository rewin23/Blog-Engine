defmodule BlogEngine.PageController do
  use BlogEngine.Web, :controller

  alias BlogEngine.Post

  def index(conn, _params) do
  	posts = Repo.all(Post)
    render(conn, "index.html", posts: posts)
  end

  def show(conn, %{"id" => id}) do
    post = Repo.get!(Post, id)
    render(conn, "show.html", post: post)
  end
end
