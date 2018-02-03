defmodule BlogEngine.Role do
  use BlogEngine.Web, :model

  schema "roles" do
    field :name, :string
    field :admin, :boolean, default: false
    has_many :users, BlogEngine.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :admin])
    |> validate_required([:name, :admin])
  end
end
