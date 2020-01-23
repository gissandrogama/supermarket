defmodule SuperFast.Repo.Migrations.CreateFretes do
  use Ecto.Migration

  def change do
    create table(:fretes) do
      add :valor, :integer
      add :endereco_provid, :string
      add :endereco_user, :string

      add :user_id, references(:users)
      add :contributor_id, references(:contributors)

      timestamps()
    end

  end
end
