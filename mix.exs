defmodule Castable.MixProject do
  use Mix.Project

  def project do
    [
      app: :castable,
      version: "0.1.1",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      description: "Protocol to aid casting unknown values to known value",
      package: [
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/coingaming/castable"},
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"],
      source_ref: "v0.1.1",
      source_url: "https://github.com/coingaming/castable"
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
