# Bash

Prefer to use "safe mode" (e.g., `set -euo pipefail`) in bash scripts that suppose to be executed, do not use it for scripts that suppose to be sourced.

Check bash scripts with shellcheck.

Prefer using explicitly declared local variables.

Use UPPER_CASE for constants and environment variables. Use lower_case for normal shell variables. 

# MCP Servers

## Context7

Always use Context7 MCP when I need library/API documentation, code generation, setup or configuration steps without me having to explicitly ask.


## JetBrains IDE MCP - mandatory for the project files and operations

**Never use these tools:** `Grep`, `Glob`, `Read`, `Edit`, `Write`, `Task(Explore)`.
**Always use JetBrains MCP equivalents instead.**

**Exception:** for paths outside the project (e.g., `~/.claude/`), use standard tools — MCP only works with project-relative paths.

**Never use `execute_terminal_command` tool.**
**Always use default `Bash` instead.**

Use other similar tools only if it is not possible to use the JetBrains IDE MCP, and you together with the user can't manage to make it work.


### Tool mapping

| Instead of      | Use JetBrains MCP                                     |
|-----------------|-------------------------------------------------------|
| `Read`          | `get_file_text_by_path`                               |
| `Edit`, `Write` | `replace_text_in_file`, `create_new_file`             |
| `Grep`          | `search_in_files_by_text`, `search_in_files_by_regex` |
| `Glob`          | `find_files_by_name_keyword`, `find_files_by_glob`    |
| `Task(Explore)` | `list_directory_tree`, `search_in_files_by_text`      |

### Additional MCP tools

- **Code analysis**: `get_symbol_info`, `get_file_problems` for understanding code
- **Refactoring**: `rename_refactoring` for symbol renaming (safer than text replacement)
- **Run configurations**: `get_run_configurations()` to discover, or `execute_run_configuration(name="...")` if name is known

### Mandatory - Verify After Writing Code

Use JetBrains MCP `get_file_problems` with errorsOnly=false to check files for warnings. FIX any warnings related to the code changes made. You may ignore unrelated warnings.
