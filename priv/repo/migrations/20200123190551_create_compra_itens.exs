defmodule SuperFast.Repo.Migrations.CreateCompraItens do
  use Ecto.Migration

  def change do
    create table(:compra_itens) do
      add :preco_unit, :float
      add :quantidade, :integer
      add :preco_total, :float
      add :item_id, references(:itens)
      add :compra_id, references(:compras)

      timestamps()
    end
    create unique_index(:compra_fretes, [:item_id, :compra_id])
  end
end
