return {
  settings = {
    yaml = {
      filetypes = { "yml", "yaml", "yaml.docker-compose" },
      schemas = {
        ["https://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
        ["https://json.schemastore.org/composer"] = "docker-compose.yaml",
        ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose*.{yml,yaml}",
      },
      schemaStore = {
        -- You can enable the schema store feature if needed
        enable = true
      },
      format = {
        enable = true,
      },
      validate = true,
      hover = true,
      completion = true,
    },
  },
}
