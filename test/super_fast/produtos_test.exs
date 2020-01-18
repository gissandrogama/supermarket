defmodule SuperFast.ProdutosTest do
  use SuperFast.DataCase

  alias SuperFast.Produtos

  describe "itens" do
    alias SuperFast.Produtos.Item

    @valid_attrs %{conteudo: "some conteudo", embalagem: "some embalagem", marca: "some marca", nome: "some nome", quantidade: 42, tipo: "some tipo", validade: "some validade"}
    @update_attrs %{conteudo: "some updated conteudo", embalagem: "some updated embalagem", marca: "some updated marca", nome: "some updated nome", quantidade: 43, tipo: "some updated tipo", validade: "some updated validade"}
    @invalid_attrs %{conteudo: nil, embalagem: nil, marca: nil, nome: nil, quantidade: nil, tipo: nil, validade: nil}

    def item_fixture(attrs \\ %{}) do
      {:ok, item} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Produtos.create_item()

      item
    end

    test "list_itens/0 returns all itens" do
      item = item_fixture()
      assert Produtos.list_itens() == [item]
    end

    test "get_item!/1 returns the item with given id" do
      item = item_fixture()
      assert Produtos.get_item!(item.id) == item
    end

    test "create_item/1 with valid data creates a item" do
      assert {:ok, %Item{} = item} = Produtos.create_item(@valid_attrs)
      assert item.conteudo == "some conteudo"
      assert item.embalagem == "some embalagem"
      assert item.marca == "some marca"
      assert item.nome == "some nome"
      assert item.quantidade == 42
      assert item.tipo == "some tipo"
      assert item.validade == "some validade"
    end

    test "create_item/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Produtos.create_item(@invalid_attrs)
    end

    test "update_item/2 with valid data updates the item" do
      item = item_fixture()
      assert {:ok, %Item{} = item} = Produtos.update_item(item, @update_attrs)
      assert item.conteudo == "some updated conteudo"
      assert item.embalagem == "some updated embalagem"
      assert item.marca == "some updated marca"
      assert item.nome == "some updated nome"
      assert item.quantidade == 43
      assert item.tipo == "some updated tipo"
      assert item.validade == "some updated validade"
    end

    test "update_item/2 with invalid data returns error changeset" do
      item = item_fixture()
      assert {:error, %Ecto.Changeset{}} = Produtos.update_item(item, @invalid_attrs)
      assert item == Produtos.get_item!(item.id)
    end

    test "delete_item/1 deletes the item" do
      item = item_fixture()
      assert {:ok, %Item{}} = Produtos.delete_item(item)
      assert_raise Ecto.NoResultsError, fn -> Produtos.get_item!(item.id) end
    end

    test "change_item/1 returns a item changeset" do
      item = item_fixture()
      assert %Ecto.Changeset{} = Produtos.change_item(item)
    end
  end
end
