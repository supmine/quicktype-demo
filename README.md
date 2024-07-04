# Quicktype demo

## Build docker image

```bash
docker build -t quicktype-demo:latest .
```

## Run docker container

```bash
# Linux
./command.sh
```

## Run quicktype Demo

```bash
# In docker container
./quicktype.sh
```

---

You can see the generated code in the `entities` directory.

If you want optional fields, you can edit the `user_schema.json` file in the `schemas` directory.

```json
"required": [
    "address",
    "age",
    "bankAccount",
    "createdAt",
    "deletedAt",
    "email",
    "name",
    "role",
    "updatedAt"
],
```

to

```json
"required": [
    "address",
    "age",
    "bankAccount",
    "email",
    "name",
    "role",
],
```

and run the `quicktype_new.sh` script inside docker container.

---

You can see the generated code in the `entities_new` directory.
