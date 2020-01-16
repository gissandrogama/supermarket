defmodule SuperFast.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :fist_name, :string
      add :last_name, :string
      add :phone, :string
      add :email, :string
      add :cpf, :integer

      timestamps()
    end

  end
end
