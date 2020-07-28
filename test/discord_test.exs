defmodule SplintersBotElixir.Responders.DiscordTest do
    use Hedwig.RobotCase

    @tag start_robot: true, name: "splintersbot", responders: [{SplintersBotElixir.Responders.Discord, []}]
    test "discord success - responds with discord env value", %{adapter: Hedwig.Adapters.Console, msg: msg} do
        send adapter, {:message, %{msg | text: "!discord"}}
        assert_recieve {:message, %{text: text}}
        assert String.conatins?(text, SplintersBotElixir.Env.fetch(:discord))
end