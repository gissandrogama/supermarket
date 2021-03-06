defmodule SuperFast.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :cpf, :string
    field :email, :string
    field :fist_name, :string
    field :last_name, :string
    field :phone, :string
    field :password, :string, virtual: true
    field :password_hash, :string
    
    has_many :compras, SuperFast.Produtos.Compra
    many_to_many :contributors, SuperFast.Accounts.Contributor, join_through: "fretes"        

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:fist_name, :last_name, :phone, :email, :cpf, :password])
    |> validate_required([:fist_name, :last_name, :phone, :email, :cpf, :password])
    |> put_password_hash()
  end

  defp put_password_hash(
         %Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset
       ) do
    change(changeset, Bcrypt.add_hash(password))
  end

  defp put_password_hash(changeset) do
    changeset
  end
end
