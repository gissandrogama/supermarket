defmodule SuperFast.Repo.Migrations.CreateCompras do
  use Ecto.Migration

  def change do
    create table(:compras) do
      add :data_compra, :date
      add :valor_total, :integer

      timestamps()
    end

  end
end
