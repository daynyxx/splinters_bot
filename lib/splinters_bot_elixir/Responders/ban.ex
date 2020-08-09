defmodule SplintersBotElixir.Responders.Ban do
  @moduledoc """
  Discord

  Replies with the discord link 
  """

  use Hedwig.Responder

  @usage """
  Temp ban
  !ban <User> <Time> <Reason>
  """
  hear ~r/\!ban (?<user>\w) (?<time>\w) (?<reson>\w*)$/, msg do
    reply msg, "/timeout #{msg.matches["user"]} #{msg.matches["time"]}"
    #Add support to keep track of ban reasons
  end
  @usage """
  permaban
  !ban <User> <Reason>
  """
  hear ~r/\!ban (?<user>\w) (?<reason>\w*)$/, msg do
    reply msg, "/ban #{msg.matches["user"]}"
    #Add support to keep track of ban reasons
  end

  @usage """
  You didn't do something right
  """
  hear ~r/\!ban \w*/, msg do
    reply msg, "Usage: !ban <user> <reason> OR !ban <user> <time> <reason>"
  end
end