defmodule PhoenixJsonApi.Router do
  use PhoenixJsonApi.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json-api"]
    plug JaSerializer.ContentTypeNegotiation
    plug JaSerializer.Deserializer
  end

  scope "/api", PhoenixJsonApi do
    pipe_through :api

    resources "/tasks", TaskController, except: [:new, :edit]
  end
end
