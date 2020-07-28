defmodule SplintersBotElixir.TwitchAuth do

    alias SplintersBotElixir.Twitch
    # * httpoison used to make http requests
    # * json used to parse json files with pattern matching
    
    require Logger

    def get_token(clientid, secret) do
        Twitch.post("?client_id=#{clientid}
            &client_secret=#{secret}
            &grant_type=client_credentials
            &scope=channel:moderate chat:edit chat:read", [])
        |> JSON.decode()
    end

    def get_token(clientid, secret, refresh) do
        Twitch.post("?grant_type=refresh_token
            &refresh_token=#{refresh}
            &client_id=#{clientid}
            &client_secret=#{secret}", [])
    end
    
    #TODO: Add function to check validation of token

end