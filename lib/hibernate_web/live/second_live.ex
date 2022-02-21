defmodule HibernateWeb.SecondLive do
  use HibernateWeb, :live_view

  @impl true
  def mount(_, _, socket) do
    {:ok, push_redirect(socket, to: Routes.third_path(socket, :page))}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div>second</div>
    """
  end
end
