defmodule HibernateWeb.HomeLive do
  use HibernateWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :counter, 0)}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div id="root" phx-hook="Root">
      <button phx-click="ping">Ping</button>
    </div>
    """
  end

  @impl true
  def handle_event("ping", %{}, socket) do
    socket = update(socket, :counter, &(&1 + 1))
    {:noreply, push_event(socket, "ping", %{counter: socket.assigns.counter})}
  end
end
