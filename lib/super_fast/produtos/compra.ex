defmodule SuperFast.Produtos.Compra do
  use Ecto.Schema
  import Ecto.Changeset

  schema "compras" do
    field :data_compra, :date
    field :valor_total, :integer

    belongs_to :user, SuperFast.Accounts.User
    many_to_many :itens, SuperFast.Produtos.Item, join_through: "compra_itens"

    timestamps()
  end

  @doc false
  def changeset(compra, attrs) do
    compra
    |> cast(attrs, [:data_compra, :valor_total])
    |> validate_required([:data_compra, :valor_total])
  end
end
