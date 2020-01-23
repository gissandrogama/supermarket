defmodule SuperFast.Produtos.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "itens" do
    field :conteudo, :string
    field :embalagem, :string
    field :marca, :string
    field :nome, :string
    field :quantidade, :integer
    field :tipo, :string
    field :validade, :string
    field :valor, :integer
    
    belongs_to :provider, SuperFast.Accounts.Provider
    many_to_many :compras, SuperFast.Produtos.Compra, join_through: "compra_itens"
    
    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:nome, :tipo, :marca, :embalagem, :conteudo, :quantidade, :validade])
    |> validate_required([:nome, :tipo, :marca, :embalagem, :conteudo, :quantidade, :validade])
  end
end
