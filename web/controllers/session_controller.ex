defmodule BlogEngine.SessionController do
  use BlogEngine.Web, :controller

	def new(conn, _params) do
		render conn, "new.html"
	end
end