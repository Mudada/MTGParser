defmodule MtgParser.MixProject do
  use Mix.Project

  def project do
    [
      app: :mtg_parser,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      maintainers: ["Mudada"],
      licenses: ["None, do what you want"],
      description: "Utilitary package to parse mtg list format",
      links: %{"GitHub" => "https://github.com/Mudada/MTGParser"}
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:combine, "~> 0.10.0"}
    ]
  end
end
