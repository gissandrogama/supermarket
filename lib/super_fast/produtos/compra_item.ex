defmodule SuperFast.Produtos.Compra_item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "compra_items" do
    field :preco_total, :float
    field :preco_unit, :float
    field :quantidade, :integer

    timestamps()
  end

  @doc false
  def changeset(compra_item, attrs) do
    compra_item
    |> cast(attrs, [:preco_unit, :quantidade, :preco_total])
    |> validate_required([:preco_unit, :quantidade, :preco_total])
  end
end
