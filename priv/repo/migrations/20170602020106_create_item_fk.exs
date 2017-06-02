defmodule Todo.Repo.Migrations.CreateItemFk do
  use Ecto.Migration

  def change do
  	alter table(:items) do
      add :tag_id, references(:tags)
    end
  end
end
