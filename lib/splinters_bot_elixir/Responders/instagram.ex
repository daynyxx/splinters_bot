defmodule SplintersBotElixir.Responders.Insta do
  @moduledoc """
  Insta

  Replies with the instagram link 
  """

  use Hedwig.Responder

  @usage """
  !INSTA
  """
  hear ~r/\!insta$/, msg do
    reply msg, SplintersBotElixir.Env.fetch(:insta)
  end
end
