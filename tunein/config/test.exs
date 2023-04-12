import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :tunein, Tunein.Repo,
  username: "postgres",
  password: "test",
  hostname: "localhost",
  database: "tunein_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :tunein_web, TuneinWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ouJRKntv6WpU+SvmROxWedDvBlYku9MH0sf7DVeZY/jJ4qthJqecBh7A90WypbEN",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :tunein, Tunein.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
