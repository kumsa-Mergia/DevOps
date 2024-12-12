# Basic YAML Syntax

YAML is a human-readable data serialization format. Below are the basic elements of YAML syntax:

### Scalars
Scalars are single values such as strings, numbers, or booleans.

```yaml
name: Kumsa Mergia
age: 25
is_active: true
```

### Sequences
Sequences are lists of items.

```yaml
fruits:
  - Apple
  - Banana
  - Orange
```

### Mappings
Mappings are key-value pairs.

```yaml
person:
  name: Kumsa Mergia
  age: 25
  skills:
    - Python
    - YAML
    - Docker
```

### Comments
Comments are added using the `#` symbol.

```yaml
# This is a comment
username: Kumsa Mergia  # Inline comment
```

### Multi-line Strings
YAML supports multi-line strings using `|` or `>`.

```yaml
description: |
  This is a multi-line string.
  It preserves line breaks.

note: >
  This is another
  multi-line string, but line breaks
  are replaced by spaces.
```

### Indentation Rules

- Use spaces for indentation (no tabs).
- Indentation determines hierarchy.
- Keys are case-sensitive.
