defmodule DummyEscript.MixProject do
  use Mix.Project

  def project do
    [
      app: :dummy_escript,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
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
      {:phoenix, "~> 1.8", runtime: false}
    ]
  end

  defp escript do
    [main_module: DummyEscript, embed_elixir: true, strip_beams: false]
  end
end
