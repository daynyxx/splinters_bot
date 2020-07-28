defmodule SplintersBotElixir.Twitch do

    use HTTPoison.Base

    @endpoint "https://id.twitch.tv/oauth2/token"

    def process_url(url) do
        @endpoint <> url
    end
    
end