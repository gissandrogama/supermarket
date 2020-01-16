defmodule SuperFast.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :cpf, :integer
    field :email, :string
    field :fist_name, :string
    field :last_name, :string
    field :phone, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:fist_name, :last_name, :phone, :email, :cpf])
    |> validate_required([:fist_name, :last_name, :phone, :email, :cpf])
  end
end
