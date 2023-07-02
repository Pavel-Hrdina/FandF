<h1 align="center"> FandF (Folders and files naming conventions helper ) </h1>

A folder and files naming conventions helper. Its main purpose, is to help with maintaining a folder structure of a workspace by following a strict system of rules that help maintain the project over a long period of time. In the end, the tool should help you follow a system for your workspacefolder structure.

## Table of Contents

- [FandF (Folders and files naming conventions helper )](#fandf--folders-and-files-naming-conventions-helper--)
  * [TOC](#toc)
  * [Philosophy](#philosophy)
    + [Common Language](#common-language)
    + [Level of Importence](#level-of-importence)
    + [Formatting](#formatting)
    + [Naming conventions](#naming-conventions)
  * [Usage](#usage)
  * [Installation](#installation)
  * [Setup](#setup)
  * [Configuration](#configuration)
    + [Using the configuration](#using-the-configuration)
  * [Roadmap](#roadmap)
- [Contributions](#contributions)
  * [License](#license)

## Philosophy

My philosophy is simplicity, usability and clarity over all. The system should be scalable, easy to follow and easy to use. If you struggle to find a file quickly and create new ones fast, then the system fails. 

This is where this tool comes in. It first helps you create the initial workspace folder and then can be run either as a linter or new file generator.

<details>
<summary><h2>Conventions</h2></summary>

Here is the list of conventions that this tool tries to inforce in the generation process and later on when linting a directory from its root down.

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

<h2>Supported file system</h2>

This tools supports multiple file systems out of the box, as every project is different. On the graph bellow, you can see the intended usage of eatch file system. You can chose to use them or use your own system by creating a [config](#configuration) that specifies your system exactly.

Out of the box file systems:



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

Your can configure this tool based on your need and your project requirements. This tool uses yaml for its configuration as of now. Here are the options you can use to configure a file system that suits your needs.     

### Using the configuration

todo

## Roadmap

- [x] <s> Create the git repo </s>

- [ ] Finish planning of the projects early stage 
    - [ ] Finish the initial documentation 
    - [ ] Make a rought plan

- [ ] Create a contributions template 
    - [ ] Create contributions guideline

- [ ] Prepare CI pipeline
    - [ ] Use github actions 
    - [ ] Pipeline:

- [ ] Create a branching strategy

- [ ] Start work on version 0.0.1 after documentation is finished
    - [ ] Create a changelog 

- [ ] Start the project clean
    - [ ] Create the 1st tests
    - [ ] Start with utilities and then create the cli ui 

# Contributions

todo

## License

This project is using [GNU General Public License v3.0](./LICENSE)
