defmodule SplintersBotElixir.Responders.Ban do
  @moduledoc """
  The Ban responder
  """

  use Hedwig.Responder

  @usage """
  hedwig help - Displays all of the help commands that hedwig knows about.
  """
  respond ~r/\!ban$/, msg, state do
    
  end

  @usage """
  hedwig help <query> - Displays all help commands that match <query>.
  """
  respond ~r/\!ban (?<user>) (?<time>)/, msg, state do
    
  end
end