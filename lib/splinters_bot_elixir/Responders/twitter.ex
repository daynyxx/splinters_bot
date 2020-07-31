defmodule SplintersBotElixir.Responders.Twitter do
    @moduledoc """
    Twitter

    Replies with the twitter link 
    """

    use Hedwig.Responder

    @usage """
    twitter - Replies with link to the youtube channel
    """
    hear ~r/\!twitter$/, msg do
        reply msg, SplintersBotElixir.Env.fetch(:twitter)
    end
end