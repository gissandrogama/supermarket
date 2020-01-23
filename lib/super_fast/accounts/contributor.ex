defmodule SuperFast.Accounts.Contributor do
  use Ecto.Schema
  import Ecto.Changeset

  schema "contributors" do
    field :address, :string
    field :cpf, :integer
    field :email, :string
    field :name, :string
    field :password, :string
    field :phone, :string

    many_to_many :users, SuperFast.Accounts.User, join_through: "fretes"

    timestamps()
  end

  @doc false
  def changeset(contributor, attrs) do
    contributor
    |> cast(attrs, [:name, :address, :cpf, :phone, :email, :password])
    |> validate_required([:name, :address, :cpf, :phone, :email, :password])
  end
end
