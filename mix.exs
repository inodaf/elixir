defmodule Taskr.MixProject do
  use Mix.Project

  def project do
    [
      app: :taskr,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Taskr.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 2.2.8"},
      {:postgrex, ">= 0.13.2"}
    ]
  end
end
