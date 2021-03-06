defmodule SuperFast.Repo.Migrations.CreateItens do
  use Ecto.Migration

  def change do
    create table(:itens) do
      add :nome, :string
      add :tipo, :string
      add :marca, :string
      add :embalagem, :string
      add :conteudo, :string
      add :quantidade, :integer
      add :validade, :string
      add :valor, :integer
      add :provider_id, references(:providers)

      timestamps()
    end

  end
end
