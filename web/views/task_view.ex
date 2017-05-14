defmodule PhoenixJsonApi.TaskView do
  use PhoenixJsonApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:title, :description, :completed, :inserted_at, :updated_at]
  

end
