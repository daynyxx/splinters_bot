defmodule SplintersBotElixir.Responders.Discord do
    @moduledoc """
    Discord

    Replies with the discord link 
    """

    use Hedwig.Responder

    @usage """
    discord - Replies with link to discord
    """
    hear ~r/\!discord$/, msg do
        reply msg, SplintersBotElixir.Env.fetch(:discord)
    end
end