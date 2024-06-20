# Makefile

# Default target to show help
.DEFAULT_GOAL := help

# Target to run the Python script, depends on lint
run: lint
	python app.py

# Target to run black
black:
	@echo "Running black..."
	black app.py

# Target to run flake8
flake8:
	@echo "Running flake8..."
	flake8 app.py

# Target to run mypy
mypy:
	@echo "Running mypy..."
	mypy app.py

# Target to run black, flake8, and mypy
lint: black flake8 mypy
	@echo "Linting completed successfully."

# Target to display help
help:
	@echo "Usage:"
	@echo "  make run    - Run the Python script app.py (after linting)"
	@echo "  make mypy   - Run mypy to check for type errors"
	@echo "  make black  - Run black to format the code"
	@echo "  make flake8 - Run flake8 to check for style guide enforcement"
	@echo "  make lint   - Run black, flake8, and mypy"
	@echo "  make help   - Display this help message"

# Phony targets to prevent conflicts with files named 'run', 'mypy', 'black', 'flake8', 'lint', or 'help'
.PHONY: run mypy black flake8 lint help
