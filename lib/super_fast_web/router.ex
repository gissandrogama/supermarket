defmodule SuperFastWeb.Router do
  use SuperFastWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SuperFastWeb do
    pipe_through :api
  end
end
