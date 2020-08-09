defmodule SplintersBotElixir.Responders.Twitter do
  @moduledoc """
  Twitter

  Replies with the twitter link 
  """

  use Hedwig.Responder

  @usage """
  !TWITTER
  """
  hear ~r/\!twitter$/, msg do
    reply msg, SplintersBotElixir.Env.fetch(:twitter)
  end
end
