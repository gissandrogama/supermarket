defmodule SuperFast.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :fist_name, :string, null: false
      add :last_name, :string, null: false
      add :phone, :string, null: false
      add :email, :string, null: false
      add :password_hash, :string
      add :cpf, :string      

      timestamps()
    end
  end
end