python-make-lint-101
==

## Usage

### Dev Container

1. Start docker
2. Run this as a Microsoft Dev Container in VS Code
3. Run this command inside the VS Code Terminal window:

```sh
make
```

### Run

```sh
make run
```

### Lint

This will run:

* black
* flake8
* mypy

```sh
make lint
```

#### mypy configuration

In this example, **mypy** is configured to demand **type annotations**:

**mypy.ini**

```ini
[mypy]
python_version = 3.8
disallow_untyped_calls = True
ignore_missing_imports = True
strict = True
```

## Notes

This project was built using a Dev Container which came with all the tools needed to build and lint a basic python app.

