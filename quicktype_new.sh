#!/bin/bash


# First, infer a JSON schema from a sample.
# quicktype user_response.json -l schema -o schemas/user_schema.json

# Review the schema, make changes,
# and commit it to your project repo.

# Finally, generate model code from schema in your
# build process for whatever languages you need:
quicktype -s schema schemas/user_schema.json -o entities_new/UserModels.swift --struct-or-class struct --just-types
quicktype -s schema schemas/user_schema.json -o entities_new/user_models.go --package UserModels
quicktype -s schema schemas/user_schema.json -o entities_new/UserModels.kt --framework kotlinx 

# All of these models will serialize to and from the same
# JSON, so different programs in your stack can communicate
# seamlessly.