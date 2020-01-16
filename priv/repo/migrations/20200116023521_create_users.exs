defmodule SuperFast.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :fist_name, :string
      add :last_name, :string
      add :phone, :string
      add :email, :string
      add :email, :string, null: false
      add :password_hash, :string
      add :cpf, :integer
      add :is_active, :boolean, default: false, null: false


      timestamps()
    end

  end
end
