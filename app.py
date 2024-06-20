# Author: Mitch Allen
#
# Note use of function annotations
# - See mypy.ini in root


def greet() -> str:
    return "Hello, World!"


def main() -> None:
    greeting = greet()
    print(greeting)


if __name__ == "__main__":
    main()
