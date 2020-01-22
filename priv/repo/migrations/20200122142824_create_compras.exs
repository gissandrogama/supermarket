defmodule SuperFast.Repo.Migrations.CreateCompras do
  use Ecto.Migration

  def change do
    create table(:compras) do
      add :user_id, references(:users)
      add :provider_id, references(:providers)
  end

  create unique_index(:compras, [:user_id, :provider_id])
end
