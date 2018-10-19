defmodule Journal.Entry do
  use Ecto.Schema
  import Ecto.Changeset


  schema "entries" do
    field :body, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(entry, attrs) do
    entry
    |> cast(attrs, [:body, :title])
    |> validate_required([:body, :title])
  end
end
