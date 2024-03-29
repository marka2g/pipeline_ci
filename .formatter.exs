[
  import_deps: [:ecto, :ecto_sql, :phoenix],
  plugins: [Phoenix.LiveView.HTMLFormatter],
  inputs:
    Enum.flat_map(
      [
        "*.{heex,ex,exs}",
        "{mix,.formatter}.exs",
        "{config,lib,test}/**/*.{ex,exs}",
        "{priv}/notes/**/*.md"
      ],
      &Path.wildcard(&1, match_dot: true)
    ) -- [".scratch.ex", ".notes.ex", "lib/pipeline_ci_web/components/core_components.ex"]
]
