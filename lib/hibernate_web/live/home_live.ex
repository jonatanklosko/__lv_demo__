defmodule HibernateWeb.HomeLive do
  use HibernateWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <%= live_redirect "Second", to: Routes.second_path(@socket, :page) %>
    </div>
    """
  end
end
