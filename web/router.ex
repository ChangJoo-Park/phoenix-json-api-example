defmodule PhoenixJsonApi.Router do
  use PhoenixJsonApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixJsonApi do
    pipe_through :api
  end
end
