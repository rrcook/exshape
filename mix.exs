defmodule Exshape.Mixfile do
  use Mix.Project

  def project do
    [
      app: :exshape,
      version: "2.2.8",
      elixir: "~> 1.16",
      description: description(),
      package: package(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp description do
    """
      Read ESRI Shapefiles as a stream of features and their attributes
    """
  end

  defp package do
    [
      maintainers: ["Chris Duranti"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/rozap/exshape"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:crypto, :logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:poison, "~> 5.0.0", only: :test}
    ]
  end
end
