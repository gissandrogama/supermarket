defmodule SuperFast.Repo.Migrations.CreateProviders do
  use Ecto.Migration

  def change do
    create table(:providers) do
      add :name, :string
      add :cnpj, :integer
      add :address, :string

      timestamps()
    end

  end
end
