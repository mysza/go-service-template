# Go Service Template

This repository is a template of a service written in Go language.
It is highly opinionated, and works for me well, but any fresh ideas and improvements are welcome.

## Core

The *core* package contains the domain model - the most specific functions and structures that are needed for the service to fulfill its job. This package has no dependencies from other service packages.

## Actions

The *actions* package contains the use cases of the service. It contains structures and functions that are applicable to the purpose of the service, and orchestrates the *core* package models to make them useful for the application.

## Adapters

The *adapters* package contains code that converts the data used by the use cases and domain models to/from the formats most convenient for any external agens, like API or databases.

## Frameworks

The *frameworks* package contains all the code that is needed to connect the service to any external agents. This can be a database connection code, web services code, and so on.

The structure is based on these excellent articles:

http://blog.8thlight.com/uncle-bob/2012/08/13/the-clean-architecture.html

http://manuel.kiessling.net/2012/09/28/applying-the-clean-architecture-to-go-applications/



