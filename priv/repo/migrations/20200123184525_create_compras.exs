defmodule SuperFast.Repo.Migrations.CreateCompras do
  use Ecto.Migration

  def change do
    create table(:compras) do
      add :data_compra, :date
      add :valor_total, :integer
      
      add :user_id, references(:users)
      add :frete_id, references(:fretes)

      timestamps()
    end

  end
end
