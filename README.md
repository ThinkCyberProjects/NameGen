```markdown
# NameGen

**A lightweight command-line utility for generating consistent and flexible name-based identifiers from raw input files.**

NameGen is a shell-based tool that processes lists of names from a plain text file and outputs a comprehensive set of permutations. It helps automate the creation of usernames, aliases, or other unique identifiers from human names by standardizing formatting, removing unwanted characters, and offering structured variations. Whether you're managing account provisioning, obfuscating identity strings, or preparing user data for testing environments, NameGen streamlines name normalization and formatting through a fast, dependable CLI interface.

## Key Features

- Cleans and sanitizes name data (removes non-alphabetic characters)
- Converts names to lowercase for consistency
- Supports single-word, two-word, and multi-word name entries
- Generates multiple permutations (e.g., `johnsmith`, `smithj`, `j.smith`)
- Easy integration into shell pipelines and automation scripts
- No external dependencies — fully POSIX-compatible
- Handles invalid or malformed lines gracefully

## Supported Input Formats

| Format Type     | Example Input          | Notes                                 |
|------------------|------------------------|----------------------------------------|
| Plain Text (.txt) | `John Smith`           | One full name per line                |
| Lowercase/Uppercase | `JANE DOE`, `alice`  | All variants automatically normalized |
| Multi-word Names | `Mary Anne Doe`        | Middle names are collapsed into last  |
| Noisy Input      | `***Bob123@! Smith***` | Non-letter characters are removed     |

## Installation

### One-liner install (Unix/Linux/macOS)
```

curl -o namegen.sh [https://raw.githubusercontent.com/yourusername/namegen/main/namegen.sh](https://raw.githubusercontent.com/yourusername/namegen/main/namegen.sh) && chmod +x namegen.sh

```

### Manual installation

1. Clone or download the repository:
```

git clone [https://github.com/yourusername/namegen.git](https://github.com/yourusername/namegen.git)

```
2. Navigate into the directory:
```

cd namegen

```
3. Make the script executable:
```

chmod +x namegen.sh

```
4. Optionally move it to a directory in your `$PATH`:
```

mv namegen.sh /usr/local/bin/namegen

```

## Usage

```

./namegen.sh names.txt

```

- **names.txt**: A plain text file where each line contains a single name entry.
- Output is printed to standard output (can be redirected or piped).
- Each line generates a set of name permutations.

## Examples

### Example input file (`names.txt`)
```

John Smith
Alice Johnson
Mary Anne Doe

```

### Command
```

./namegen.sh names.txt

```

### Output
```

johnsmith
smithjohn
john.smith
smith.john
smithj
jjohn
sjohn
j.smith
s.john
john
smith
alicejohnson
johnsonalice
alice.johnson
johnson.alice
johnsona
ajohnson
jalice
a.johnson
j.alice
alice
johnson
maryannedoe
doemaryanne
maryanne.doe
doe.maryanne
doem
mdoe
dmaryanne
m.doe
d.maryanne
maryanne
doe

```

> Tip: You can redirect output to a file using `./namegen.sh names.txt > usernames.out`

## Additional Tips

- Make sure the input file uses UTF-8 encoding and Unix line endings (`\n`).
- Names with middle names will treat all names after the first as the "last name" (e.g., `Mary Anne Doe` → `fname=mary`, `lname=annedoe`).
- Use in automation:
```

cat names.txt | ./namegen.sh | sort | uniq > final\_usernames.txt

```
- To ignore duplicate entries or filter for specific patterns, combine with `grep`, `awk`, or `sed`.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Created by

**NameGen** was created and maintained by [Your Name]. Contributions and feedback are welcome!
```
