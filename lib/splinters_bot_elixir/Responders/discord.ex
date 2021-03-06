defmodule SplintersBotElixir.Responders.Discord do
  @moduledoc """
  Discord

  Replies with the discord link 
  """

  use Hedwig.Responder

  @usage """
  !DISCORD
  """
  hear ~r/\!discord$/, msg do
      reply msg, SplintersBotElixir.Env.fetch(:discord)
  end
end
