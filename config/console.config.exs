use Mix.Config

config :splinters_bot_elixir, SplintersBotElixir.Robot,
  adapter: Hedwig.Adapters.Console,
  name: "splintersbot",
  aka: "!",
  responders: [
    {Hedwig.Responders.Help, []},
    {Hedwig.Responders.Ping, []},
    {SplintersBotElixir.Responders.Discord, []}
  ]
