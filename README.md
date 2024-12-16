# Unexpected Process Termination in Elixir Enum.each

This repository demonstrates a subtle bug related to process termination within an `Enum.each` loop in Elixir.  The provided code attempts to exit the process if a specific condition is met, but this method can be problematic.  A better approach uses `Enum.reduce` or a more controlled termination mechanism.

The `bug.exs` file contains the problematic code, while `bugSolution.exs` offers a safer and more robust solution.

**Key Issue:** Using `Process.exit` directly inside `Enum.each` can interrupt the iteration prematurely and cause resource leaks.  Elixir's error handling and process management capabilities can mitigate these issues.