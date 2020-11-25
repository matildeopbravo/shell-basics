---
title: Shell Basics
author: Matilde Bravo

---


# Basic Commands

## File tree example

```bash
.
├── ficheiro1
├── ficheiro2
├── ficheiro3
├── ficheiro4
└── universidade
    └── 1ano1sem
        ├── Algebra
        ├── Calculo
        ├── EES
        ├── LI1
        ├── PF
        └── TMD
```
## ls - List files and directories


```bash
$ ls
ficheiro1 ficheiro2 ficheiro3 ficheiro4 universidade
```
```bash
$ ls -l
total 8
drwxr-xr-x 3 matilde matilde 4096 Nov 25 17:22 universidade
-rw-r--r-- 1 matilde matilde    4 Nov 24 21:28 ficheiro1
-rw-r--r-- 1 matilde matilde    0 Nov 24 21:16 ficheiro2
-rw-r--r-- 1 matilde matilde    0 Nov 24 21:16 ficheiro3
-rw-r--r-- 1 matilde matilde    0 Nov 24 21:16 ficheiro4
```
##
```bash
$ ls -la # ls -l -a
total 44
drwx------ 5 matilde matilde 4096 Nov 25 17:29 .
drwxr-xr-x 4 root    root    4096 Nov 24 21:15 ..
-rw------- 1 matilde matilde  843 Nov 25 10:03 .bash_history
-rw-r--r-- 1 matilde matilde   21 Aug  9 17:27 .bash_logout
-rw-r--r-- 1 matilde matilde   57 Aug  9 17:27 .bash_profile
-rw-r--r-- 1 matilde matilde 3280 Nov 25 17:21 .bashrc
-rw-r--r-- 1 matilde matilde    4 Nov 24 21:28 ficheiro1
-rw-r--r-- 1 matilde matilde    0 Nov 24 21:16 ficheiro2
-rw-r--r-- 1 matilde matilde    0 Nov 24 21:16 ficheiro3
-rw-r--r-- 1 matilde matilde    0 Nov 24 21:16 ficheiro4
drwxr-xr-x 2 matilde matilde 4096 Nov 24 21:32 .ghc
-rw------- 1 matilde matilde   32 Nov 25 09:49 .lesshst
drwx------ 3 matilde matilde 4096 Nov 25 09:47 .local
drwxr-xr-x 3 matilde matilde 4096 Nov 25 17:22 universidade

```
## man - Manual pages
```bash
$ man ls

```
```
NAME
       ls - list directory contents

SYNOPSIS
       ls [OPTION]... [FILE]...

DESCRIPTION:
 -a, --all
        do not ignore entries starting with .

 -l     use a long listing format

 -t     sort by time, newest first; see --time

 -s, --size
        print the allocated size of each file, in blocks

  -X    sort alphabetically by entry extension
  ```


## cd - Change directory

```bash
$ cd universidade
```
```bash
$ ls
1ano1sem
```
```bash
$ cd 1ano1sem/PF
```
##
Return to user's home directory (~)
```bash
$ cd ~
```
Go back one directory
```bash
$ cd ..

```
## pwd - Print Work Directory
```bash
$ pwd
/home/matilde/universidade/1ano1sem/PF

```
