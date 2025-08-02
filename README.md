
# NameGen

**A command-line tool for generating realistic domain usernames from names — built for red team operators and offensive security use.**

NameGen helps red teams quickly generate likely usernames from harvested or publicly available name lists, emulating the formats commonly used in enterprise environments. It produces a comprehensive set of permutations — like jdoe, john.smith, smithj, and more — to support username enumeration, password spraying, and initial account discovery. With zero dependencies and clean output, NameGen integrates seamlessly into offensive workflows and scripts where speed, stealth, and realism matter.

## Key Features

- Cleans and sanitizes raw name data (removes non-alphabetic characters)
- Normalizes names to lowercase for consistent output
- Supports single-word, two-word, and multi-word name entries
- Generates common enterprise-style username patterns (`jdoe`, `john.smith`, `smithj`, etc.)
- Ideal for username enumeration and account discovery phases
- Integrates easily into shell pipelines and automation workflows
- No external dependencies
- Silently skips malformed or empty lines to preserve clean output

## Supported Input Formats

| Format Type         | Example Input           | Description                                                   |
|---------------------|-------------------------|---------------------------------------------------------------|
| Plain Text (.txt)   | `John Smith`            | One full name per line                                        |
| Case-insensitive    | `alice`, `JANE DOE`     | All input is converted to lowercase automatically             |
| Multi-part Names    | `Mary Anne Doe`         | Everything after the first token is merged into the last name |



## Installation

### One-liner install (Unix/Linux/macOS)
```

curl -o NameGen.sh https://raw.githubusercontent.com/ThinkCyberProjects/NameGen/refs/heads/main/NameGen.sh && chmod +x NameGen.sh

```

### Manual installation

1. Clone or download the repository:
```

git clone https://github.com/ThinkCyberProjects/NameGen.git

```
2. Navigate into the directory:
```

cd NameGen

```
3. Make the script executable:
```

chmod +x NameGen.sh

```
4. Optionally move it to a directory in your `$PATH`:
```

mv NameGen.sh /usr/local/bin/NameGen

```

## Usage

```

./NameGen.sh usernames.txt

```

- **usernames.txt**: A plain text file where each line contains a single name entry.
- Output is printed to standard output (can be redirected or piped).
- Each line generates a set of name permutations.

## Examples

### Example input file (`usernames.txt`)
```

John Smith
Alice Johnson
Mary Anne Doe

```

### Command
```

./namegen.sh usernames.txt

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

## Additional Tips

- Make sure the input file uses UTF-8 encoding and Unix line endings (`\n`).
- Names with middle names will treat all names after the first as the "last name" (e.g., `Mary Anne Doe` → `fname=mary`, `lname=annedoe`).

