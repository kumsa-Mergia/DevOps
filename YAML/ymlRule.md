# YAML Rules

**Case Sensitivity**: YAML is case-sensitive, so `Key` and `key` are considered different.

**Indentation**: YAML uses indentation to represent hierarchy. Indentation must be done with spaces, not tabs. It’s recommended to use 2 spaces per indentation level. The level of indentation can be one or more spaces and is used for nesting of key-values.

**Comments**: Comments in YAML begin with the `#` symbol. Comments can be placed on their own line or at the end of a line.

**Whitespace**: is part of YAML's formatting. It is important for structure and readability.

**Newlines**: Indicate the end of a field.

- Everything in YAML is a Key-value pair; also known as a Dictionary/Hash/Object/Map.
  
- These are the building blocks of YAML, and every item in a YAML document is a member of at least one dictionary.

- YAML doesn't allow the use of tab characters for indentations. Use spaces instead.

- The Keys are always strings, and data types that YAML supports include booleans, numbers, lists, arrays, and strings, including multi-line strings.

- The file starts with three dashes **(`---`)** to indicate the start of a new YAML document.
