# Calcul Quebec Guide

### To setup:

1. Use sponser number (receive number by existing member) to create account
2. Receive approval
3. Sign-in and create usr and pssd

*Now that TFA is required, you must also do the following*

1. *Sign in to your online account using usr and pssd*
2. *Download the Duo Mobile App on your phone/tablet*
3. *Navigate to* **My Account** *>* **Multifactor Authentication Management**
4. *Register your phone/tablet through a QR code*

### Installing packages

We want to set a module in which we will be working (as in, the versions of various programs we will be using). In order to explore modules, we can use:

```
[akravchu@cedar1]$ module spider
```

We want to use the latest version of R available to us (4.4.0), so we find that:

```
[akravchu@cedar1]$ module spider r/4.4.0

--------------------------------------------------------------------------------------------------------------
  r: r/4.4.0
--------------------------------------------------------------------------------------------------------------
    Description:
      R is a free software environment for statistical computing and graphics.

    Properties:
      Tools for development / Outils de développement

    You will need to load all module(s) on any one of the lines below before the "r/4.4.0" module is available to load.

      StdEnv/2023

    Help:
      Description
      ===========
      R is a free software environment for statistical computing
       and graphics.


      More information
      ================
       - Homepage: https://www.r-project.org/

```

meaning that when we load, we need to run:

```
module load StdEnv/2023 r/4.4.0
```

HOWEVER for some packages of R, we will need the program gsl, which means we need to explore the modules for this program:

```
[akravchu@cedar1]$ module spider gsl/2.7

--------------------------------------------------------------------------------------------------------------
  gsl: gsl/2.7
--------------------------------------------------------------------------------------------------------------
    Description:
      The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers. The library provides
      a wide range of mathematical routines such as random number generators, special functions and
      least-squares fitting.

    Properties:
      Mathematical libraries / Bibliothèques mathématiques

    You will need to load all module(s) on any one of the lines below before the "gsl/2.7" module is available to load.

      StdEnv/2020  gcc/11.3.0
      StdEnv/2023  gcc/12.3
      StdEnv/2023  intel/2023.2.1

    This module provides the following extensions:

        (E)

    Help:
      Description
      ===========
      The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers.
       The library provides a wide range of mathematical routines such as random number generators, special functions
       and least-squares fitting.


      More information
      ================
       - Homepage: https://www.gnu.org/software/gsl/
```

which means we will ultimately need to load before every job:

```
[akravchu@cedar1]$ module load StdEnv/2023 gcc/12.3 gsl/2.7 r/4.4.0
```

### Useful links:

For more info on how to sign in: https://docs.alliancecan.ca/wiki/SSH

How to run jobs: https://docs.alliancecan.ca/wiki/Running_jobs 

For more info on available clusters: https://docs.alliancecan.ca/wiki/Getting_started

For more info on available clusters: https://libguides.biblio.polymtl.ca/c.php?g=672867&p=5281101
