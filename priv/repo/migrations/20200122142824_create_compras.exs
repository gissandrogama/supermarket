defmodule SuperFast.Repo.Migrations.CreateCompras do
  use Ecto.Migration

  def change do
    create table(:compras) do
      add :user_id, references(:users)
      add :item_id, references(:itens)
  end

  create unique_index(:compras, [:user_id, :item_id])
end