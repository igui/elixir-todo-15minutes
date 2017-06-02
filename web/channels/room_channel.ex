defmodule HelloPhoenix.RoomChannel do
  use Phoenix.Channel

  def join("room", _message, socket) do
    {:ok, socket}
  end
end