defmodule SuperFast.Produtos.Compra_frete do
  use Ecto.Schema
  import Ecto.Changeset

  schema "compra_fretes" do
    field :preco_total, :float
    field :preco_unit, :float
    field :quantidade, :integer

    timestamps()
  end

  @doc false
  def changeset(compra_frete, attrs) do
    compra_frete
    |> cast(attrs, [:preco_unit, :quantidade, :preco_total])
    |> validate_required([:preco_unit, :quantidade, :preco_total])
  end
end
