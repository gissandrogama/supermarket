defmodule SuperFast.Repo.Migrations.CreateCompraFretes do
  use Ecto.Migration

  def change do
    create table(:compra_fretes) do
      add :preco_unit, :float
      add :quantidade, :integer
      add :preco_total, :float

      timestamps()
    end

  end
end
