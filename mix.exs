defmodule Awsmanager.Mixfile do
  use Mix.Project

  def project do
    [app: :awsmanager,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [applications: [:ex_aws, :hackney, :poison],
      extra_applications: [:logger]]
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
      {:ex_aws, "~> 1.0"},
      {:poison, "~> 2.0"},
      {:hackney, "~> 1.6"},
      {:sweet_xml, "~> 0.6"},
      {:configparser_ex, "~> 0.2.1"},
      {:credo, "~> 0.7", only: [:dev, :test]},
      {:quixir, "~> 0.9", only: :test}
    ]
  end
end
