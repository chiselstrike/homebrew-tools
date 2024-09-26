# Turso Homebrew tap

This repository is a private Homebrew tap with tools provided by [Turso](https://turso.tech/).
Currently we're providing:

Tool | Installation instruction | Description
| :---: | :---: | :---: |
`turso` | `brew install tursodatabase/tap/turso` | Command line tool for managing `Turso` database

## Adding the tap to your homebrew
You can add Turso Database tap to your local homebrew with:

```console
brew tap tursodatabase/tap
```

That will allow you to install formuleas from this tap without referrencing it explicitely.

So for example you would be able to install `turso` with:

```console
brew install turso
```

instead of providing a full name like:

```console
brew install tursodatabase/tap/turso
```
