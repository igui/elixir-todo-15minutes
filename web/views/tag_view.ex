defmodule Todo.TagView do
  use Todo.Web, :view

  def render("index.json", %{tags: tags}) do
    %{data: render_many(tags, Todo.TagView, "tag.json")}
  end

  def render("show.json", %{tag: tag}) do
    %{data: render_one(tag, Todo.TagView, "tag.json")}
  end

  def render("tag.json", %{tag: tag}) do
    %{id: tag.id,
      title: tag.title}
  end
end
