defmodule SuperFast.Produtos.Compra do
  use Ecto.Schema
  import Ecto.Changeset

  schema "compras" do
    field :data_compra, :date
    field :valor_total, :integer

    timestamps()
  end

  @doc false
  def changeset(compra, attrs) do
    compra
    |> cast(attrs, [:data_compra, :valor_total])
    |> validate_required([:data_compra, :valor_total])
  end
end
