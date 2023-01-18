defmodule ClashUrlConvergeTest do
  use ExUnit.Case, async: true
  use Plug.Test

  doctest ClashUrlConverge

  test "test JSON string" do
    conn = conn(:get, "/")
    res = ClashUrlConverge.call(conn, [])

    assert res.resp_body == ~s({"users": ["remi", "joe", "bob"]})
  end
end
