defmodule SuperFast.Accounts.Provider do
  use Ecto.Schema
  import Ecto.Changeset

  schema "providers" do
    field :address, :string
    field :cnpj, :integer
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(provider, attrs) do
    provider
    |> cast(attrs, [:name, :cnpj, :address])
    |> validate_required([:name, :cnpj, :address])
  end
end
