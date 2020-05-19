# Go Imports Action

This action execute goimports command and return the output if the command fail.

## Inputs

`goimports-path`

Path where your Go files are.
This path will be used by goimports command to check imports of this files.

Default one is the repository root (`./`).

## Outputs

`goimports-output`

The goimports output if the command fail.

For Example:

```bash
All following has imports not properly ordered
handlers/writer.go
services/writer/writerServices.go
```

## Example Usage

```yaml
uses: Jerome1337/goimports-action@v1.0.2
with:
  goimports-path: './src'
````
