# Multiline Strings in YAML

YAML supports multiline strings using the following syntax:

    - | for preserving newlines in the string.
    - > for folding newlines into spaces.

## Example:
```yml
description: |
  This is a multiline string
  that preserves newlines.

summary: >
  This is a multiline string
  that folds newlines into spaces.
```
In the description key, the newlines are preserved, while in the summary key, newlines are converted into spaces.