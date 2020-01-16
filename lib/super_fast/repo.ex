defmodule SuperFast.Repo do
  use Ecto.Repo,
    otp_app: :super_fast,
    adapter: Ecto.Adapters.Postgres
end
