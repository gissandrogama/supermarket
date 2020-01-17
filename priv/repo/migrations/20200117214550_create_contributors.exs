defmodule SuperFast.Repo.Migrations.CreateContributors do
  use Ecto.Migration

  def change do
    create table(:contributors) do
      add :name, :string
      add :address, :string
      add :cpf, :integer
      add :phone, :string
      add :email, :string
      add :password, :string

      timestamps()
    end

  end
end
