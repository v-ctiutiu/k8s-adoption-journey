# Building the Documentation

A simple quick start for building the documentation for the [Kubernetes Adoption Journey](https://digitalocean.github.io/k8s-adoption-journey/) project.

## Overview

Main documentation is built using [MkDocs](https://www.mkdocs.org/). It's a powerful and yet simple static site generator tool written in [Python](https://www.python.org). Documentation generated using MkDocs is authored using Markdown files and a [mkdocs.yaml](../mkdocs.yml) file to configure the entire project.

Main theme used is called [Material for MkDocs](https://squidfunk.github.io/mkdocs-material). It's a feature rich theme offering lots of possibilities in terms of formatting and enriching documentation pages content

For more information and available features, please visit:

- [MkDocs User Guide](https://www.mkdocs.org/user-guide/)
- [Material Theme Reference](https://squidfunk.github.io/mkdocs-material/reference/)

## Prerequisites

1. [Python3](https://www.python.org/) installed on your machine. Instructions available [here](https://docs.python-guide.org/starting/installation/), depending on your operating system.
2. [Pip3](https://pip.pypa.io/en/stable/) installed on your machine. You can check if it's installed as described [here](https://docs.python-guide.org/starting/install3/linux/#setuptools-pip).
3. [GNU Make](https://www.gnu.org/software/make/) for building [Makefile](https://www.gnu.org/software/make/manual/html_node/Introduction.html) based projects:
   - [Linux instructions](https://howtoinstall.co/en/make).
   - [MacOS instructions](https://formulae.brew.sh/formula/make) (via Homebrew).

## Understanding MkDocs Project Layout

Each project starts with a [mkdocs.yaml](../mkdocs.yml) file. This is the central piece of every MkDocs based project. It contains configuration describing your MkDocs project such as name, author, navigation structure, theme, etc. Whenever you build a MkDocs project, this file is read first and static html content is generated based on current configuration.

Minimal `mkdocs.yaml` configuration looks like below:

```yaml
site_name: Example Project
site_url: https://example.com

nav:
  - Home: index.md
  - About: about.md
theme:
  name: material
  logo: assets/logo.png
```

## Content Authoring

## Local Testing

## Publishing to GitHub Pages

## Using GitHub Actions to Automate the Process

## Extending Functionality via Plugins/Extensions

## Cleaning Up

## Additional Resources
