defmodule SplintersBotElixir.Env do
  @moduledoc """
  Helper for getting the environmental variable
  """

  @doc """
  Fetches the key
  ## Example
    Blur.Env.fetch!(:username)
    "800807"
  """
  def fetch!(key) when is_atom(key) do
    case fetch(key) do
      "" -> raise "Environmetal variable not found."
      value -> value
    end
  end

  @doc """
  Get the keys from the system variables
  """
  def fetch(key) when is_atom(key) do
    case key do
      :discord -> System.get_env("DISCORD")
      :youtube -> System.get_env("YOUTUBE")
      :insta -> System.get_env("INSTA")
      :twitter -> System.get_env("TWITTER")
      _ -> ""
    end
  end
end
