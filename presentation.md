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
Return to user's home directory `/home/matilde`
```bash
$ cd ~
```
Go back one directory
```bash
$ cd ..

```
## pwd - Print Work Directory
Assumindo que fizemos `cd` para a diretoria **PF**
```bash
$ pwd
/home/matilde/universidade/1ano1sem/PF

```
## Relative vs absolute paths
Ainda situando-me na diretoria **PF**

```bash
$ cd /home/matilde/universidade

```
É equivalente a :
```bash
$ cd ../..

```
# File commands
## mkdir - Make directory
```bash
$ mkdir series
```
```bash
$ mkdir series/mr_robot/season1
  mkdir: cannot create directory ‘series/mr_robot/season1’: No such file or directory
```

```bash
$ mkdir -p series/mr_robot/season1
```

## touch - Create empty file

```bash
touch notes
```

## cat - Display files


```bash
$ cat ficheiro1
ola

```
```bash
$ cat notes
```

## cp - Copy
Se estivermos na nossa home, neste caso, `/home/matilde`
```bash
$ cp ficheiro1 universidade

```
Alternativamente, podemos utilizar o **path absoluto**

```bash
$ cp ~/ficheiro1 ~/universidade

```
Copiar **recursivamente** para a diretoria atual

```bash
$ cp -r ~/universidade/1ano1sem .

```

## mv - Move (or rename)

Se estivermos na diretoria `~`

```bash
$ mv ficheiro1 universidade/1ano1sem/PF

```
Mudar o nome de uma diretoria
```bash
$ mv universidade uni

```
## rm - Remove
```bash
$ rm ~/universidade/1ano1sem/PF/ficheiro1
```
```bash
$ rm  ~/universidade/1ano1sem/LI1
  rm: cannot remove 'universidade/1ano1sem/LI1/': Is a directory
```
Para apagar uma diretoria temos que remover recursivamente
```bash
$ rm  -r ~/universidade/1ano1sem/LI1
```
Para forçar
```bash
$ rm  -rf ~/universidade/1ano1sem/LI1

```
# Redirection and Pipes

##
#### Output redirection
Apresentar texto
```bash
$ echo "Hello World"
Hello World
```
Adicionar texto a um ficheiro(overwrite)
```bash
$ echo "Hello World" > ficheiro1
```
Acrescentar texto a um ficheiro(append)
```bash
$ echo "Goodbye" >> ficheiro1
```
```bash
$ cat ficheiro1
Hello World
Goodbye
```

#### Input redirection

Fornecer o conteúdo de um ficheiro como input
```bash
$ cat < ficheiro1
Hello World
Goodbye
```
#### Pipe

Conta o número de ficheiros (não escondidos)
```bash
$ ls | wc -l

```
Mostra o nome dos dois primeiros ficheiros (alfabeticamente)
```bash
$ ls | head -2
```
Mostra todos os ficheiros com a palavra 'ficheiro' no nome
```bash
$ ls | grep "ficheiro"
ficheiro1
ficheiro2
ficheiro3
ficheiro4
```
Mostra o número de caracteres da ultima linha do ficheiro1
```bash
$ cat ficheiro1 | tail -1 | wc -m
```
Mostra o que está antes do caracter '-' na string fornecida
```bash
$ echo "Shell-Basics" | cut -d '-' -f1
Shell
```
