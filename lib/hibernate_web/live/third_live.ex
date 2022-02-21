defmodule HibernateWeb.ThirdLive do
  use HibernateWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <div>third</div>
    """
  end
end
