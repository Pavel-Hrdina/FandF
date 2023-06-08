# FandF (Folders and files naming conventions helper )

A folder and files naming conventions helper. Its main purpose, is to help with maintaining a folder structure of a workspace by following a strict system of rules that help maintain the project over a long period of time. In the end, the tool should help you follow a system for your workspacefolder structure.


## Philosophy

My philosophy is simplicity, usability and clarity over all. The system should be scalable, easy to follow and easy to use. If you struggle to find a file quickly and create new ones fast, then the system fails. 


This is where this tool comes in. It first helps you create the initial workspace folder and then can be run either as a linter or new file generator.

<details>
<summary><h2>Conventions</h2></summary>

Here is the list of conventions that this tool tries to inforce in the generation process.

### Common Language

This is up to the user and is not checked by this tool.

* Names should be intuitive descriptive and provide context.

* User should be able to identify the contents/contex of a file by its name. 

### Level of Importence

This is the importance level indicated by a number at the beggining of the file. 

* The elements are ordered in the name by level of importance.

    That means that every folder should start with a number, like: `[01]folder`, that indicates its relevance and the importance. The number should not be bigger than 99.

* Most important or grouping information should be listed first.

* Give relevant information to the person scaning the files.

### Formatting 

* Length - should be as short as possible, while retaining meaning.

* Abbreviations / acronyms - can be used if the meaning is understood by all that work with the files.

* Seperate elements - with a combinations of underscores, dashes, or UpperCamelCase; instead of spaces.

You can also:

* Use a versioning.

* Use dates to enhance sorting and sustainability.

> **Warning** 
> do not use the following:

* Special characters that are used by the operating system.

### Naming conventions

Keep it simple if possible:

**Folders example:**

1. [52]NamingConvention

2. [23]SystemMaintananceScripts

**Files examples:**

</details>

## Usage

The installer adds a fandf command for the current user. Use `fandf --help` to list all the avalible options.  

```bash
fandf (todo)
```

| Command   | Description                           |
|---------- |---------------------------------------|
| `generate`| Generates a new workspace.            |

## Installation

```bash
# Initial commit
```

## Setup

## Configuration

## Roadmap

## License

This project is using [GNU General Public License v3.0](./LICENSE)
