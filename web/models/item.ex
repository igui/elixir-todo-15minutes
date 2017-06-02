defmodule Todo.Item do
  use Todo.Web, :model

  schema "items" do
    field :title, :string
    field :description, :string

    has_one :tag, Tag

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :description])
    |> validate_required([:title])
  end
end
