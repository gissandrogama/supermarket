defmodule SuperFast.Repo.Migrations.CreateFretes do
  use Ecto.Migration

  def change do
    create table(:fretes) do
      add :valor, :integer
      add :endereco_provid, :string
      add :endereco_user, :string

      timestamps()
    end

  end
end
