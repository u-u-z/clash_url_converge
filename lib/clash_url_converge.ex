defmodule ClashUrlConverge do
  @moduledoc """
    route /users returns a list of users ["remi", "joe", "bob"]
  """
  import Plug.Conn

  def init(options) do
    # return options
    options
  end

  @spec call(Plug.Conn.t(), any) :: Plug.Conn.t()
  def call(context, _opts) do
    # print request url
    IO.inspect(context.path_info)

    context
    |> put_resp_content_type("application/json")
    |> send_resp(200, ~s({"users": ["remi", "joe", "bob"]}))
  end
end
