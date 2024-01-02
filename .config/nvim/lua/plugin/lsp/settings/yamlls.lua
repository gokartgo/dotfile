return {
  settings = {
    yaml = {
      filetypes = { "yml", "yaml", "yaml.docker-compose" },
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
      },
    },
  },
}
