# Mod5 gitProject

## Intro
`gitProject` allows you to quickly download and install student projects for
local troubleshooting. 

**Example**
```sh
$ gitProject https://github.com/edenspring/gitProject.git thisRepo
```
The function it adds expect the syntax to be 
```sh
$ gitProject repoURL folderToCreate
```

## About
Something that tends to eat up a fair chunk of time during project week is the
process of cloning, installing and setting up a student's application. The
function that it runs will add extra scripts to their `package.json` as well as
define a set `.env` for their backend. The `.env` file is configured to use a
PSQL user and database that are created bu running the install script below.

## Install
To install this command line utility, you may either download and run the
[install script][install] or copy and paste the following command:
```sh
curl -o- https://raw.githubusercontent.com/edenspring/project-gitr/main/src/install.sh | bash
```
## Known Issues
As of now, this is a bit of a naive utility that has only been tested on a few
environments and configurations. It should work with WSL/MacOS using bash or
MacOS with zsh. If you get output stating `"Unsure of shell, exiting script"`,
please open an [issue][issues] and give me some information about your setup. 

## Making it better
There are plenty of ways to imrpove this utility! If you have some ideas for how
it could be made better don't hesitate to [request a feature][issues] or reach
out directly. 

## Uninstalling
Right now there's no automated uninstall. To remove the function, you'll need to
open your shell's configuration file (typically `.bashrc` or `.zshrc`) and
remove the function definition. It can be found between comments stating 
`##Begin gitProject function` and `##End gitProject function`. To remove the
PSQL user and database that are created, run these commands:
```sh
psql -t -A -c "DROP DATABASE AASTUDENT;"
psql -t -A -c "DRP{} USER AAINSTRUCTOR;"
```

[install]: https://github.com/edenspring/gitProject/blob/main/src/install.sh
[issues]: https://github.com/edenspring/gitProject/issues