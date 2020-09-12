defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      name: "Issues",
      source_url: "https://github.com/DuoPan/elixir-mix-hello-world",
      escript: escript_config(),
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      { :httpoison, "~> 1.0.0" },
      { :poison, "~> 3.1"},
      { :ex_doc, "~> 0.22.0"},
      { :earmark, "~> 1.4.10"},
    ]
  end

  defp escript_config do
    [
      main_module: Issues.CLI
    ]
  end
end
