defmodule SplintersBotElixir.Responders.Ban do
  @moduledoc """
  The Ban responder
  """

  require Logger

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
    send msg, "/timeout user time"
  end

  respond ~r/\!ban (?<user>) (?<reason>)/, msg, state do
    send msg, "/ban user"
    # Add user and reason to banned json/mongodb file
  end
end
