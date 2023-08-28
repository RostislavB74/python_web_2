from setuptools import setup, find_packages

import json
import os


def read_pipenv_dependencies(fname):
    """Получаем из Pipfile.lock зависимости по умолчанию."""
    filepath = os.path.join(os.path.dirname(__file__), fname)
    with open(filepath) as lockfile:
        lockjson = json.load(lockfile)
        return [dependency for dependency in lockjson.get("default")]


if __name__ == "__main__":
    setup(
        name="Next Frontier Project",
        version="0.1.11b",
        description="Personal Assistant Project",
        license="MIT",
        author="Next Frontier",
        packages=["personal_assistant"],
        install_requires=["rich"],
        entry_points={
            "console_scripts": [
                "personal_assistant = personal_assistant.main_menu:menu"
            ]
        },
    )
