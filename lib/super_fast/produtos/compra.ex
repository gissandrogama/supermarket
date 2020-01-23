defmodule SuperFast.Produtos.Compra do
  use Ecto.Schema
  import Ecto.Changeset

  schema "compras" do
    field :data_compra, :date
    field :valor_total, :integer

    many_to_many :itens, SuperFast.Produtos.Item, join_through: "compra_fretes"

    timestamps()
  end

  @doc false
  def changeset(compra, attrs) do
    compra
    |> cast(attrs, [:data_compra, :valor_total])
    |> validate_required([:data_compra, :valor_total])
  end
end
