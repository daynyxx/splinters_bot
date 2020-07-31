defmodule SplintersBotElixir.Responders.Insta do
    @moduledoc """
    Insta

    Replies with the instagram link 
    """

    use Hedwig.Responder

    @usage """
    insta - Replies with link to the youtube channel
    """
    hear ~r/\!insta$/, msg do
        reply msg, SplintersBotElixir.Env.fetch(:insta)
    end
end