# Best Practices for Writing YAML Files

YAML (YAML Ain't Markup Language) is a human-readable data serialization format. It is often used for configuration files and data exchange. Here are the best practices to follow when writing YAML files:

---

## 1. **Keep it Simple and Readable**
- Use indentation to show structure.
- Avoid complex structures when simple ones work.
- Limit line length to improve readability.

```yaml
name: Example
version: 1.0.0
services:
  app:
    image: nginx:latest
    ports:
      - "80:80"
```

---

## 2. **Use Consistent Indentation**
- Use **2 spaces** per indentation level (do not use tabs).
- Never mix tabs and spaces as it causes parsing errors.

```yaml
good_example:
  level_one:
    level_two: value
```

**Incorrect:**
```yaml
bad_example:
	level_one:
	  level_two: value
```

---

## 3. **Avoid Trailing Spaces**
- Trailing spaces can cause unexpected errors.
- Configure your editor to automatically remove trailing spaces.

---

## 4. **Use Meaningful Keys**
- Key names should be descriptive but not overly long.
- Use lowercase and underscores (`_`) for multiple words.

```yaml
user_profile:
  username: johndoe
  email: johndoe@example.com
```

---

## 5. **Quoting Strings**
- Strings **do not require quotes** unless they contain special characters.
- Use **single quotes** for plain strings and **double quotes** for strings that require escape sequences.

```yaml
plain_string: This is a string
quoted_string: 'This is a quoted string'
escaped_string: "Line1\nLine2"
```

---

## 6. **Write Lists Clearly**
- Use hyphens (`-`) with a single space to define list items.
- Align list items consistently with indentation.

```yaml
shopping_list:
  - apples
  - oranges
  - bananas
```

---

## 7. **Avoid Repeating Data**
- Use YAML anchors (`&`) and aliases (`*`) to avoid duplication.

```yaml
defaults: &default_settings
  environment: production
  debug: false

app:
  <<: *default_settings
  name: my_app
```

---

## 8. **Explicit Data Types**
- Use explicit syntax for different data types:
  - Strings: `'example'` or `"example"`
  - Integers: `123`
  - Floats: `1.23`
  - Booleans: `true` or `false`
  - Null: `null` or `~`

```yaml
example:
  string_value: 'text'
  integer_value: 100
  float_value: 3.14
  boolean_value: true
  null_value: ~
```

---

## 9. **Commenting**
- Use `#` for adding comments to your YAML file.
- Write meaningful comments for clarity.

```yaml
# This is a configuration file for the application
app:
  name: my_app  # Application name
  version: 2.0.0
```

---

## 10. **Validate Your YAML**
- Use YAML linting tools to validate syntax and formatting.
- Tools like `yamllint` and `online YAML parsers` help catch errors early.

```bash
# Example using yamllint
$ yamllint myfile.yaml
```

---

## 11. **Do Not Overuse Inline YAML**
- Use inline YAML for short, simple data.
- Prefer block-style YAML for complex structures.

**Inline:**
```yaml
inline_list: [item1, item2, item3]
inline_dict: {key1: value1, key2: value2}
```

**Block:**
```yaml
block_list:
  - item1
  - item2
block_dict:
  key1: value1
  key2: value2
```

---

## 12. **Avoid Special Characters in Keys**
- Stick to alphanumeric keys and underscores.
- Avoid spaces, dashes, or special characters in keys.

```yaml
valid_key: value
invalid key!: value  # Avoid spaces and special characters
```

---

## 13. **Handle Multi-line Strings Carefully**
- Use `|` (pipe) for block-style multi-line strings (preserves newlines).
- Use `>` (greater-than) for folded-style multi-line strings (folds into a single line).

**Block Style:**
```yaml
block_text: |
  This is line one.
  This is line two.
```

**Folded Style:**
```yaml
folded_text: >
  This is a long line
  that gets folded into a single line.
```

---

## 14. **Environment Variables and Secrets**
- Never hardcode sensitive data like passwords or API keys.
- Use environment variables for secrets.

```yaml
database:
  username: ${DB_USER}
  password: ${DB_PASS}
```

---

## Conclusion
By following these best practices, your YAML files will be clean, maintainable, and error-free. Always validate and test your YAML to ensure it works as intended.

---

### Additional Resources
- [YAML Specification](https://yaml.org/spec/)
- [Yamllint Documentation](https://yamllint.readthedocs.io/)
- [Online YAML Validator](https://www.yamllint.com/)
