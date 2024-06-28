`package.json`

```json
  "cds": {
    "requires": {
      "db": {
        "kind": "sqlite",
        "credentials": {
          "url": "db.sqlite"
        }
      }
    }
  }
```

```bash
$ cds deploy
$ cds env requires.db
{
  impl: '@sap/cds/libx/_runtime/sqlite/Service.js',
  credentials: { url: 'db.sqlite' },
  kind: 'sqlite'
}
```

sqltools extension setting
`./vscode/settings.json`

```json
"sqltools.connections": [
    {
      "previewLimit": 50,
      "driver": "SQLite",
      "name": "risk-management",
      "database": "db.sqlite"
    }
  ]
```

tutorial: https://community.sap.com/t5/technology-blogs-by-sap/deploying-cap-services-with-the-in-memory-sqlite-database/ba-p/13508405
