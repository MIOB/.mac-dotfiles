# Java/Kotlin

Always run tests when adding them.

# Bash

Follow the [Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html).

Prefer safe mode, such as `set -euo pipefail`, in bash scripts that are meant to be executed. Do not use it for scripts that are meant to be sourced.

Check bash scripts with `shellcheck`.

Prefer explicitly declared local variables.

Use UPPER_CASE for constants and environment variables. Use lower_case for normal shell variables.

Use the `#!/usr/bin/env bash` shebang.

# MCP Servers

## Context7

Always use Context7 MCP when library/API documentation, code generation, setup, or configuration steps are needed without the user having to explicitly ask.

## JetBrains IDE MCP - project files and IDE context

Use JetBrains IDE MCP for project-aware file exploration, reading, searching, code insight, refactoring, run configuration discovery, and IDE inspections whenever it is available.

Prefer semantic JetBrains MCP capabilities over generic shell/file operations for files inside the project. Tool names may vary between JetBrains MCP versions, so choose the available tool that best matches the operation instead of relying on a fixed mapping table.

Exception: for paths outside the project, such as `~/.codex/` or `~/.claude/`, standard shell/file tools are acceptable because JetBrains MCP only works with project-relative paths.

Never use the JetBrains `execute_terminal_command` tool. Use the default shell tool for terminal commands.

After writing code, use JetBrains MCP inspections, such as `get_file_problems` with `errorsOnly=false`, to check changed project files. Fix warnings related to the code changes made. Unrelated warnings may be ignored.

## GitHub

Do not post anything on GitHub unless explicitly asked by the user.
