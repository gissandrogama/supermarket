defmodule SuperFast.Produtos.Frete do
  use Ecto.Schema
  import Ecto.Changeset

  schema "fretes" do
    field :endereco_provid, :string
    field :endereco_user, :string
    field :valor, :integer
    
    has_one :compra, SuperFast.Produtos.Compra

    timestamps()
  end

  @doc false
  def changeset(frete, attrs) do
    frete
    |> cast(attrs, [:valor, :endereco_provid, :endereco_user])
    |> validate_required([:valor, :endereco_provid, :endereco_user])
  end
end
