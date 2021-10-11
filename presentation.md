---
title: Shell Basics
author: Matilde Bravo

---
# Introdução
##
<h1> Shell </h1>
<p class="first"> Programa que permite a comunicação com o **Sistema Operativo** </p>
<p class="first">e.g: **Bash** </p>

##
<h1> Terminal </h1>
<p class="first"> Interface que permite utilizar a **Shell** </p>
<p class="first">e.g: **Konsole** </p>

# Basic Commands

## File tree example

`.` simboliza a diretoria atual

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
ls
ficheiro1 ficheiro2 ficheiro3 ficheiro4 universidade
```
```bash
ls -l
total 8
drwxr-xr-x 3 matilde matilde 4096 Nov 25 17:22 universidade
-rw-r--r-- 1 matilde matilde    4 Nov 24 21:28 ficheiro1
-rw-r--r-- 1 matilde matilde    0 Nov 24 21:16 ficheiro2
-rw-r--r-- 1 matilde matilde    0 Nov 24 21:16 ficheiro3
-rw-r--r-- 1 matilde matilde    0 Nov 24 21:16 ficheiro4
```
##
```bash
ls -la # ls -l -a
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
man ls

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
 cd universidade
```
```bash
 ls
1ano1sem
```
```bash
 cd 1ano1sem/PF
```
##
Go back one directory
```bash
 cd ..

```
Return to user's home directory **`/home/matilde`**
```bash
 cd ~ # ou apenas cd
```

**/** represents **root** directory

## Relative vs absolute paths


Situando-me na diretoria **PF**

Caminho relativo até à diretoria **LI1**
```bash
 cd ../LI1
```
<p> Caminho absoluto até à diretoria **LI1** </p>
```bash
 cd /home/matilde/universidade/1ano1sem/LI1
```
##
```bash
 cd /home/matilde/universidade

```
É equivalente a :

```bash
 cd ~/universidade

```
E também a :

```bash
 cd ../..

```

## pwd - Print Work Directory
Assumindo que fizemos **`cd`** para a diretoria **PF**
```bash
 pwd
/home/matilde/universidade/1ano1sem/PF

```
# Creating, deleting and displaying files
## mkdir - Make directory
```bash
 mkdir series
```
```bash
mkdir series/mr_robot/season1
  mkdir: cannot create directory ‘series/mr_robot/season1’: No such file or directory
```

```bash
 mkdir -p series/mr_robot/season1
```

## touch - Create empty file

```bash
touch notes
```

## cat - Display files


```bash
 cat ficheiro1
ola

```
```bash
 cat notes
```

## cp - Copy
Se estivermos na nossa home, neste caso, `/home/matilde`
```bash
 cp ficheiro1 universidade

```
Alternativamente, podemos utilizar o **path absoluto**

```bash
 cp ~/ficheiro1 ~/universidade

```
Copiar **recursivamente** para a diretoria atual

```bash
 cp -r ~/universidade/1ano1sem .

```

## mv - Move (or rename)

Se estivermos na diretoria `~`

```bash
 mv ficheiro1 universidade/1ano1sem/PF

```
Mudar o nome de uma diretoria
```bash
 mv universidade uni

```
## rm - Remove
```bash
 rm ~/universidade/1ano1sem/PF/ficheiro1
```
```bash
 rm  ~/universidade/1ano1sem/LI1
  rm: cannot remove 'universidade/1ano1sem/LI1/': Is a directory
```
Para apagar uma diretoria temos que remover recursivamente
```bash
 rm  -r ~/universidade/1ano1sem/LI1
```
Para forçar
```bash
 rm  -rf ~/universidade/1ano1sem/LI1

```
# Redirection and Pipes

## Output redirection
Apresentar texto
```bash
 echo "Hello World"
Hello World
```
Adicionar texto a um ficheiro(overwrite)
```bash
 echo "Hello World" > ficheiro1
```
Acrescentar texto a um ficheiro(append)
```bash
 echo "Goodbye" >> ficheiro1
```
```bash
 cat ficheiro1
Hello World
Goodbye
```

##
#### Input redirection

Fornecer o conteúdo de um ficheiro como input
```bash
 cat < ficheiro1
Hello World
Goodbye
```
#### Pipes

Conta o número de ficheiros (não escondidos)
```bash
 ls | wc -l
5
```
Mostra o nome dos dois primeiros ficheiros (alfabeticamente)
```bash
 ls | head -2
ficheiro1
ficheiro2
```
##
Mostra todos os ficheiros com a palavra 'ficheiro' no nome
```bash
 ls | grep "ficheiro"
ficheiro1
ficheiro2
ficheiro3
ficheiro4
```
Mostra o número de caracteres da ultima linha do ficheiro1
```bash
 cat ficheiro1 | tail -1 | wc -m
8
```
Mostra o que está antes do caracter '-' na string fornecida
```bash
 echo "Shell-Basics" | cut -d '-' -f1
Shell
```

# Installing
## Package Manager
- apt/apt-get (e.g: Ubuntu,PopOS)
- pacman (eg: Manjaro)

##
#### Install a package

```bash
 sudo apt install curl
 sudo pacman -S curl
```
#### Update Database
```bash
 sudo apt update
 sudo pacman -Syy
```
##
#### Upgrade
```bash
 sudo apt upgrade
 sudo pacman -Syu
```

#### List installed packages
```bash
 sudo apt list --installed
 sudo pacman -Qe

```

## Web transfer
```bash
 curl "https://cesium.di.uminho.pt"
```
```bash
 curl "https://cesium.di.uminho.pt" > file
```
```bash
 curl "https://cesium.di.uminho.pt" | grep 'estudantes'

```
```bash
 wget "https://bit.ly/2HNtDEN" -o cesiumlogo.png

```

# Miscellaneous
## Globbing

Mostra todos os ficheiros que terminam em  `.hs`
```bash
 ls *.hs

```
Copia todos os ficheiros da diretoria atual para a `new_directory`
```bash
 cp * new_directory

```
Apaga todos os ficheiros começados por 'ficheiro'
```bash
 rm ficheiro*

```

## Operators

```bash
git commit -m "new commit" && git push
```
```bash
cd ~/universidade/1ano1sem/PF ; code ficha1
```
```bash
cd ~/universidade || cd ~/uni
```

## Finding

```bash
find . -name ficheiro1
./ficheiro1
```
```bash
find . -name "ficheiro*"
./ficheiro3
./ficheiro1
./ficheiro2
./ficheiro4
```

```bash
find ~/Pictures -name "*.jpg"

```
## Useful Tips
- Navegar histórico com **↑** e **↓**
- **Tab** completion
- **CTRL-L** ou **`clear`** para limpar o ecrã
- Reverse search com **CTRL-R**
- **!!** para repetir o comando anterior (eg: sudo !!)

##
<img src="./img/miscellaneous.gif" width="1300" height=600"/>


# Questões


