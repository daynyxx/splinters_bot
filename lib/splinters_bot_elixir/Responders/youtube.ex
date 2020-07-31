defmodule SplintersBotElixir.Responders.Youtube do
    @moduledoc """
    Youtube

    Replies with the youtube link 
    """

    use Hedwig.Responder

    @usage """
    youtube - Replies with link to the youtube channel
    """
    hear ~r/\!youtube$/, msg do
        reply msg, SplintersBotElixir.Env.fetch(:youtube)
    end
end