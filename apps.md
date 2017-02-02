# Default App Library

## Groups

### Web Development

* ID: `Bench.Group.WebDevelopment`
* Label: Web Development
* Typ: `meta`
* Dependencies:
    + `Bench.Group.JavaScriptDevelopment`
    + `Bench.Bower`
    + `Bench.Less`
    + `Bench.Sass`
    + `Bench.JSBeautify`

### JavaScript Development

* ID: `Bench.Group.JavaScriptDevelopment`
* Label: JavaScript Development
* Typ: `meta`
* Dependencies:
    + `Bench.Npm`
    + `Bench.JSHint`
    + `Bench.JSLint`
    + `Bench.JSBeautify`
    + `Bench.Tern`
    + `Bench.Atom`

### Java Development

* ID: `Bench.Group.JavaDevelopment`
* Label: Java Development
* Typ: `meta`
* Dependencies:
    + `Bench.JDK8`
    + `Bench.Maven`
    + `Bench.EclipseJava`

### Clojure Development

* ID: `Bench.Group.ClojureDevelopment`
* Label: Clojure Development
* Typ: `meta`
* Dependencies:
    + `Bench.Group.JavaDevelopment`
    + `Bench.Leiningen`
    + `Bench.BootClj`
    + `Bench.Inlein`
    + `Bench.Nightcode`

### PHP Development

* ID: `Bench.Group.PHPDevelopment`
* Label: PHP Development
* Typ: `meta`
* Dependencies:
    + `Bench.PHP7`
    + `Bench.Apache`
    + `Bench.MySQL`
    + `Bench.MySQLWB`
    + `Bench.EclipsePHP`

### Python 2 Development

* ID: `Bench.Group.Python2Development`
* Label: Python 2 Development
* Typ: `meta`
* Dependencies:
    + `Bench.Python2`
    + `Bench.Python2.IPython`
    + `Bench.Python2.PEP8`

### Python 3 Development

* ID: `Bench.Group.Python3Development`
* Label: Python 3 Development
* Typ: `meta`
* Dependencies:
    + `Bench.Python3`
    + `Bench.Python3.IPython`
    + `Bench.Python3.PEP8`

### Ruby Development

* ID: `Bench.Group.RubyDevelopment`
* Label: Ruby Development
* Typ: `meta`
* Dependencies:
    + `Bench.Ruby`
    + `Bench.RubyGems`
    + `Bench.Bundler`

### C/C++ Development

* ID: `Bench.Group.CppDevelopment`
* Label: C/C++ Development
* Typ: `meta`
* Dependencies:
    + `Bench.MinGW`
    + `Bench.CMake`
    + `Bench.EclipseCpp`

### LaTeX Writing

* ID: `Bench.Group.LaTeXWriting`
* Label: LaTeX Writing
* Typ: `meta`
* Dependencies:
    + `Bench.MiKTeX`
    + `Bench.TeXnicCenter`
    + `Bench.JabRef`

## Security

### OpenSSL

OpenSSL is an open source project that provides a robust, commercial-grade, and full-featured toolkit for the Transport Layer Security (TLS) and Secure Sockets Layer (SSL) protocols.
It is also a general-purpose cryptography library.

* ID: `Bench.OpenSSL`
* Website: <https://www.openssl.org/>
* License: BSD-Style
* LicenseUrl: https://www.openssl.org/source/license.html
* Docs:
    + Overview: <https://www.openssl.org/docs/man1.0.2/apps/openssl.html>
    + Commands: <https://www.openssl.org/docs/man1.0.2/apps/>
    + Windows Build: <http://slproweb.com/products/Win32OpenSSL.html>
* Version: 1.1.0c
* Version2: 1_1_0c
* Url: `http://slproweb.com/download/$:ArchiveName$`
* ArchiveName: `Win32OpenSSL-$:Version2$.exe`
* ArchiveTyp: `inno`
* Path: `bin`
* Exe: `bin\openssl.exe`

### GNU TLS

The GnuTLS Transport Layer Security Library.

* ID: `Bench.GnuTLS`
* Label: GNU TLS
* Website: <http://www.gnutls.org/>
* License: LGPL-2.1
* LicenseUrl: <https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html>
* Docs:
    + Manual: <http://www.gnutls.org/manual/gnutls.html>
* Version: 3.4.15
* Url: `http://sourceforge.net/projects/ezwinports/files/$:ArchiveName$`
* ArchiveName: `gnutls-$:Version$-w32-bin.zip`
* Dir: `bench\gnu`
* Path: `bin`
* Exe: `bin\gnutls-cli.exe`

### GnuPG

GnuPG is a complete and free implementation of the OpenPGP standard as defined by RFC4880 (also known as PGP).
GnuPG allows to encrypt and sign your data and communication, features a versatile key management system
as well as access modules for all kinds of public key directories.
GnuPG, also known as GPG, is a command line tool with features for easy integration with other applications.

* ID: `Bench.GnuPG`
* Website: <https://gnupg.org>
* License: GPL-3
* Docs:
    + Manual: <https://gnupg.org/documentation/manuals/gnupg-2.0/>
    + Commands: <https://gnupg.org/documentation/manuals/gnupg-2.0/Operational-GPG-Commands.html>
* Version: 2.0.30
* Url: `https://sourceforge.net/projects/portableapps/files/GPG Plugin Portable/$:ArchiveName$`
* ArchiveName: `GPG_Plugin_Portable_$:Version$.paf.exe`
* Dir: `bench\gpg`
* Path: `pub`
* Exe: `pub\gpg.exe`

### Putty

PuTTY is a free (MIT-licensed) Win32 Telnet and SSH client.

* ID: `Bench.Putty`
* Website: <http://www.putty.org>
* License: MIT
* Docs:
    + User Manual: <http://the.earth.li/~sgtatham/putty/0.67/htmldoc/>
* Version: latest
* Url: <http://the.earth.li/~sgtatham/putty/latest/x86/putty.zip>
* ArchiveName: `putty.zip`
* RegistryKeys: `Software\SimonTatham`
* Launcher: $:Label$

## Version Control

### GitKraken

The downright luxurious Git client, for Windows, Mac & Linux.

No proxy support yet (Version 1.3.0).

* ID: `Bench.GitKraken`
* Version: latest
* Website: <https://www.gitkraken.com/>
* License: Freemium
* LicenseUrl: `LICENSE`
* Docs:
    + FAQ: <https://www.gitkraken.com/faq>
* Url: <https://release.gitkraken.com/win32/GitKrakenSetup.exe>
* ArchiveName: `GitKrakenSetup.exe`
* ArchiveTyp: `custom`
* ArchivePath: `lib\net45`
* Launcher: $:Label$

## Languages and Platforms

### PHP 5

PHP is a popular general-purpose scripting language that is especially suited to web development.
Fast, flexible and pragmatic, PHP powers everything from your blog to the most popular websites in the world.

This application needs the x86 version of the [Visual C++ 11 Redistributable](https://www.microsoft.com/download/details.aspx?id=30679) installed.

* ID: `Bench.PHP5`
* Label: PHP 5
* Website: <http://www.php.net>
* License: BSD-Style
* LicenseUrl: <http://www.php.net/license/3_01.txt>
* Docs:
    + PHP Manual: <http://php.net/manual/en/>
* Version: 5.6.29
* Url: `http://windows.php.net/downloads/releases/archives/$:ArchiveName$`
* ArchiveName: `php-$:Version$-Win32-VC11-x86.zip`
* Exe: `php.exe`

### PHP 7

PHP is a popular general-purpose scripting language that is especially suited to web development.
Fast, flexible and pragmatic, PHP powers everything from your blog to the most popular websites in the world.

This application needs the x86 version of the [Visual C++ 14 Redistributable](https://www.microsoft.com/download/details.aspx?id=48145) installed.

* ID: `Bench.PHP7`
* Label: PHP 7
* Website: <http://www.php.net>
* License: BSD-Style
* LicenseUrl: <http://www.php.net/license/3_01.txt>
* Docs:
    + PHP Manual: <http://php.net/manual/en/>
* Version: 7.0.14
* Url: `http://windows.php.net/downloads/releases/archives/$:ArchiveName$`
* ArchiveName: `php-$:Version$-Win32-VC14-x86.zip`
* Exe: `php.exe`

### Java Runtime Environment 7

According to Oracle, Java is the world's #1 programming language.

The runtime environment is required for a compiled Java program to get executed.

* ID: `Bench.JRE7`
* Label: Java Runtime Environment 7
* Website: <https://www.oracle.com/java/>
* License: OBCL
* LicenseUrl: <http://www.oracle.com/technetwork/java/javase/terms/license/index.html>
* Docs:
    + Downloads: <http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html>
* Version: 7u80
* Release: b15
* Url: `http://download.oracle.com/otn-pub/java/jdk/$:Version$-$:Release$/$:ArchiveName$`
* DownloadCookies: `oraclelicense: accept-securebackup-cookie`
* ArchiveName: `jre-$:Version$-windows-i586.tar.gz`
* ArchivePath: `jre1.7.0_80`
* Path: `bin`
* Exe: `bin\java.exe`
* Environment:
    + `JAVA_CMD`: `$:Exe$`

### Java Runtime Environment 8

According to Oracle, Java is the world's #1 programming language.

The runtime environment is required for a compiled Java program to get executed.

* ID: `Bench.JRE8`
* Label: Java Runtime Environment 8
* Website: <https://www.oracle.com/java/>
* License: OBCL
* LicenseUrl: <http://www.oracle.com/technetwork/java/javase/terms/license/index.html>
* Docs:
    + Downloads: <http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html>
* Version: 121
* Release: b13
* LinkUUID: e9e7ea248e2c4826b92b3f075a80e441
* Url: `http://download.oracle.com/otn-pub/java/jdk/8u$:Version$-$:Release$/$:LinkUUID$/$:ArchiveName$`
* DownloadCookies: `oraclelicense: accept-securebackup-cookie`
* ArchiveName: `jre-8u$:Version$-windows-i586.tar.gz`
* ArchivePath: `jre1.8.0_$:Version$`
* Path: `bin`
* Exe: `bin\java.exe`
* Environment:
    + `JAVA_CMD`: `$:Exe$`

### Java Development Kit 7

According to Oracle, Java is the world's #1 programming language.

The development kit is required for Java source code to get compiled.

* ID: `Bench.JDK7`
* Label: Java Development Kit 7
* Website: <https://www.oracle.com/java/>
* License: OBCL
* LicenseUrl: <http://www.oracle.com/technetwork/java/javase/terms/license/index.html>
* Docs:
    + Downloads: <http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html>
    + Documentation: <http://docs.oracle.com/javase/7/docs/>
    + Java SE 7 API: <http://docs.oracle.com/javase/7/docs/api/index.html>
* Version: $Bench.JRE7:Version$
* Release: $Bench.JRE7:Release$
* Url: `http://download.oracle.com/otn-pub/java/jdk/$:Version$-$:Release$/$:ArchiveName$`
* DownloadCookies: `oraclelicense: accept-securebackup-cookie`
* ArchiveName: `jdk-$:Version$-windows-i586.exe`
* Path: `bin`
* Exe: `bin\javac.exe`
* Environment:
    + `JAVA_HOME`: `$:Dir$`
    + `JAVA_CMD`: `$:Dir$\jre\bin\java.exe`

### Java Development Kit 8

According to Oracle, Java is the world's #1 programming language.

The development kit is required for Java source code to get compiled.

* ID: `Bench.JDK8`
* Label: Java Development Kit 8
* Website: <https://www.oracle.com/java/>
* License: OBCL
* LicenseUrl: <http://www.oracle.com/technetwork/java/javase/terms/license/index.html>
* Docs:
    + Downloads: <http://www.oracle.com/technetwork/java/javase/downloads/index.html>
    + Documentation: <http://docs.oracle.com/javase/8/docs/>
    + Java SE 8 API: <http://docs.oracle.com/javase/8/docs/api/index.html>
* Version: $Bench.JRE8:Version$
* Release: $Bench.JRE8:Release$
* LinkUUID: $Bench.JRE8:LinkUUID$
* Url: `http://download.oracle.com/otn-pub/java/jdk/8u$:Version$-$:Release$/$:LinkUUID$/$:ArchiveName$`
* DownloadCookies: `oraclelicense: accept-securebackup-cookie`
* ArchiveName: `jdk-8u$:Version$-windows-i586.exe`
* Path: `bin`
* Exe: `bin\javac.exe`
* Environment:
    + `JAVA_HOME`: `$:Dir$`
    + `JAVA_CMD`: `$:Dir$\jre\bin\java.exe`

### Leiningen

Leiningen is the easiest way to use Clojure.
With a focus on project automation and declarative configuration,
it gets out of your way and lets you focus on your code.

* ID: `Bench.Leiningen`
* Dependencies: `Bench.JDK8`, `Bench.GnuPG`, `Bench.Wget`
* Website: <http://leiningen.org>
* License: EPL-1.0
* LicenseUrl: <https://raw.githubusercontent.com/technomancy/leiningen/stable/COPYING>
* Docs:
    + Tutorial: <https://github.com/technomancy/leiningen/blob/stable/doc/TUTORIAL.md>
    + Sample project.clj: <https://github.com/technomancy/leiningen/blob/stable/sample.project.clj>
    + FAQ: <https://github.com/technomancy/leiningen/blob/stable/doc/FAQ.md>
    + Clojure Documentation: <http://clojure-doc.org/>
    + Clojure Reference: <http://clojure.org/reference/documentation>
    + Clojure API: <http://clojure.github.io/clojure/>
* Version: latest
* Url: <https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein.bat>
* ResourceName: `lein.bat`
* Dir: `bench\lein`
* Exe: `lein.bat`
* Environment:
    + `LEIN_JAR`: `$:Dir$\leiningen.jar`

### Inlein

Run Clojure scripts with dependencies, but without classpath pains.

_Warning: This program is leaking into the Windows user home folder under `C:\Users\<currentuser>\.inlein`_.

* ID: `Bench.Inlein`
* Website: <http://inlein.org>
* License: EPL-1.0
* LicenseUrl: <https://raw.githubusercontent.com/hyPiRion/inlein/master/LICENSE>
* Docs:
    + Getting Started: <https://github.com/hyPiRion/inlein/wiki/Getting-Started>
* Dependencies: `Bench.Leiningen`
* Version: 0.1.0
* Url: `https://github.com/hyPiRion/inlein/releases/download/$:Version$/inlein`
* ResourceName: `inlein.bat`
* Exe: `$:ResourceName$`
* Dir: `bench\lein`

### Boot Clojure

Build tooling for Clojure.

* ID: `Bench.BootClj`
* Label: Boot Clojure
* Dependencies: `Bench.JDK8`, `Bench.Maven`
* Website: <http://boot-clj.com>
* Docs:
    + Wiki: <https://github.com/boot-clj/boot/wiki>
* Version: latest
* Url: <https://github.com/boot-clj/boot/releases/download/2.4.0/boot.exe>
* ResourceName: `boot.exe`
* Exe: `boot.exe`

### .NET Core SDK

The build tools and compilers for platform independent .NET Core applications.

* ID: `Bench.DotNetCore`
* Label: .NET Core SDK
* Version: 1.1
* Website: <https://www.microsoft.com/net/core>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/dotnet/coreclr/master/LICENSE.TXT>
* Docs:
    + Docs: <https://docs.microsoft.com/dotnet/>
    + Getting Started: <https://docs.microsoft.com/dotnet/articles/core/index>
    + Welcome: <https://docs.microsoft.com/dotnet/articles/welcome>
    + API Reference: <https://docs.microsoft.com/dotnet/core/api/index>
* Url: `https://go.microsoft.com/fwlink/?LinkID=834993`
* ArchiveName: `DotNetCore.SDK.zip`
* Exe: `dotnet.exe`

### MinGW Get

The package manager for [MinGW](http://www.mingw.org/).

* ID: `Bench.MinGwGet`
* License: MIT
* Version: $Bench.MinGW:Version$
* Release: $Bench.MinGW:Release$
* Dependencies: `Bench.Wget`
* Url: `https://sourceforge.net/projects/mingw/files/Installer/mingw-get/mingw-get-$:Version$-$:Release$/$:ArchiveName$`
* ArchiveName: `mingw-get-$:Version$-mingw32-$:Release$-bin.tar.xz`
* Dir: `$Bench.MinGW:Dir$`
* Path: `bin`
* Exe: `bin\mingw-get.exe`

### MinGW Get GUI

A graphical user interface for the package manager of [MinGW](http://www.mingw.org/).

* ID: `Bench.MinGwGetGui`
* License: MIT
* Version: $Bench.MinGW:Version$
* Release: $Bench.MinGW:Release$
* Dependencies: `Bench.MinGwGet`
* Url: `https://sourceforge.net/projects/mingw/files/Installer/mingw-get/mingw-get-$:Version$-$:Release$/$:ArchiveName$`
* ArchiveName: `mingw-get-$:Version$-mingw32-$:Release$-gui.tar.xz`
* Dir: `$Bench.MinGW:Dir$`
* Exe: `libexec\mingw-get\guimain.exe`
* Register: `false`
* Launcher: `MinGW Package Manager`

### MinGW

MinGW provides a GNU development environment for Windows,
including compilers for C/C++, Objective-C, Fortran, Ada, ...

* ID: `Bench.MinGW`
* Typ: `meta`
* Version: 0.6.2
* Release: beta-20131004-1
* Dependencies: `Bench.MinGwGet`, `Bench.MinGwGetGui`
* Website: <http://www.mingw.org/>
* License: MIT
* LicenseUrl: <https://sourceforge.net/p/mingw/mingw-org-wsl/ci/21762bb4a1bd0c88c38eead03f59e8d994349e83/tree/LICENSE>
* Docs:
    + FAQ: <http://mingw.org/wiki/FAQ>
    + HOWTO: <http://mingw.org/wiki/HOWTO>
* Dir: `bench\mingw`
* Path: `bin`, `msys\1.0\bin`
* Packages:
    + `mingw32-base`
    + `mingw32-gcc-g++`
    + `mingw32-autotools`

You can adapt the preselected MinGW packages
by putting something like this in your user app library in `config\apps.md`:

```Markdown
* ID: `Bench.MinGW`
* Packages:
    + `mingw32-base`
    + `mingw32-gcc-g++`
    + `mingw32-autotools`
    + `msys-bash`
    + `msys-grep`
```

After the automatic setup by _Bench_, you can use the launcher shortcut
_MinGW Package Manager_ to start the GUI for _MinGW Get_
and install more MinGW packages.

### LLVM Clang

The Clang compiler can act as drop-in replacement for the GCC compilers.

This app sets the environment variables `CC` and `CXX` to inform _CMake_
about the C/C++ compiler path. Therefore, if you build your C/C++ projects
with _CMake_, it is sufficient to just activate the _Clang_ app and _CMake_
will use _Clang_ instead of the GCC compiler from _MinGW_.

If you want to use the Clang compiler with Eclipse, you must manually
install the LLVM-Plugin for Eclipse CDT.

* ID: `Bench.Clang`
* Label: LLVM Clang
* Version: 3.9.1
* Website: <http://clang.llvm.org/>
* License: UoI-NCSA
* LicenseUrl: <https://opensource.org/licenses/UoI-NCSA.php>
* Url: `http://llvm.org/releases/$:Version$/$:ArchiveName$`
* ArchiveName: `LLVM-$:Version$-win32.exe`
* Dir: `bench\llvm`
* Path: `bin`
* Exe: `bin\clang.exe`
* Environment:
    + `CC`: `$:Dir$\bin\clang.exe`
    + `CXX`: `$:Dir$\bin\clang++.exe`

### Go

Go is an open source programming language that makes it easy
to build simple, reliable, and efficient software.

* ID: `Bench.Go`
* Version: 1.7.4
* Website: <https://golang.org>
* License: BSD-3-Clause
* LicenseUrl: <https://golang.org/LICENSE>
* Docs:
    + Overview: <https://golang.org/doc/>
    + FAQ: <https://golang.org/doc/faq>
    + Language Specification: <https://golang.org/ref/spec>
    + Command-Line: <https://golang.org/doc/cmd>
    + Packages: <https://golang.org/pkg/>
* Url: `https://storage.googleapis.com/golang/$:ArchiveName$`
* ArchiveName: `go$:Version$.windows-386.zip`
* ArchivePath: `go`
* Path: `bin`
* Exe: `bin\go.exe`
* Environment:
    + `GOROOT`: `$:Dir$`

### Erlang

Erlang is a programming language used to build massively scalable soft real-time systems with requirements on high availability. Some of its uses are in telecoms, banking, e-commerce, computer telephony and instant messaging. Erlang's runtime system has built-in support for concurrency, distribution and fault tolerance.

* ID: `Bench.Erlang`
* Website: <http://www.erlang.org/>
* License: Apache-2.0
* Docs:
    + Documentation: `$:Dir$\doc\index.html`
* VersionMajor: 19
* VersionMinor: 2
* ErtsVersion: 8.2
* Version: $:VersionMajor$.$:VersionMinor$
* Url: `http://erlang.org/download/$:ArchiveName$`
* ArchiveName: `otp_win32_$:Version$.exe`
* ArchiveType: `generic`
* ErtsDir: `erts-$:ErtsVersion$`
* Path: `$:ErtsDir$\bin`
* Exe: `$:ErtsDir$\bin\erl.exe`
* Environment: `ERLANG_HOME=$:ErtsDir$`
* Launcher: $:Label$
* LauncherExecutable: `$:ErtsDir$\bin\werl.exe`

### CoffeeScript

* ID: `Bench.CoffeeScript`
* Typ: `node-package`
* Website: <http://coffeescript.org/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/jashkenas/coffeescript/master/LICENSE>
* Docs:
    + Usage: <http://coffeescript.org/#usage>
    + Language Reference: <http://coffeescript.org/#language>
    + Resources: <http://coffeescript.org/#resources>
* PackageName: `coffee-script`
* Version: `>=1.10.0 <2.0.0`
* Exe: `coffee.cmd`

### R

R is a free software for statistical computing and graphics.

* ID: `Bench.R`
* Website: <https://www.r-project.org>
* Version: 3.3.2
* Url: `https://mirrors.cicku.me/CRAN/bin/windows/base/$:ArchiveName$`
* ArchiveName: `R-$:Version$-win.exe`
* ArchiveTyp: `inno`
* Dir: `bench\r`
* Path: `bin`
* Exe: `bin\R.exe`
* Environment:
    + `R_HOME`: `$:Dir$`

## Editors

### Atom

A hackable text editor for the 21st Century.

_Hint: Install the `env-from-shell` package to make sure the Bench environment
is picked up from Atom._

* ID: `Bench.Atom`
* Website: <https://atom.io>
* License: MIT
* LicenseUrl: <https://github.com/atom/atom/blob/master/LICENSE.md>
* Docs:
    + Packages: <https://atom.io/packages>
    + Themes: <https://atom.io/themes>
    + Flight Manual: <http://flight-manual.atom.io/>
    + API Reference: `https://atom.io/docs/api/v$:Version$/AtomEnvironment`
* Version: 1.13.0
* Url: `https://github.com/atom/atom/releases/download/v$:Version$/atom-windows.zip`
* ArchiveName: `atom-windows-$:Version$.zip`
* ArchivePath: `Atom`
* Environment:
    + ATOM_HOME: `$HomeDir$\.atom`
* Exe: `atom.exe`
* Path: `resources\cli`
* Launcher: $:Label$
* DefaultPackages:
    + `minimap`
    + `script`
    + `git-plus`
    + `language-powershell`

You can adapt the pre-installed Atom packages
by putting something like this in your user app library in `config\apps.md`:

```Markdown
* ID: `Bench.Atom`
* DefaultPackages:
    + `git-plus`
    + `language-powershell`
```

### Visual Studio Code

A cross platform code editor from Microsoft.

* ID: `Bench.VSCode`
* Label: Visual Studio Code
* Website: <https://code.visualstudio.com/>
* License: MS-L
* LicenseUrl: <https://code.visualstudio.com/License/>
* Docs:
    + Documentation: <https://code.visualstudio.com/Docs>
* Version: latest
* Url: <http://go.microsoft.com/fwlink/?LinkID=623231>
* ArchiveName: `VSCode-win32.zip`
* Dir: `bench\code`
* Exe: `code.exe`
* Launcher: $:Label$

### Sublime Text 3

Sublime Text is a sophisticated text editor for code, markup and prose.
You'll love the slick user interface, extraordinary features and amazing performance.

* ID: `Bench.SublimeText3`
* Label: Sublime Text 3
* Website: <http://www.sublimetext.com/3>
* License: Commercial
* Docs:
    + Documentation: <https://www.sublimetext.com/docs/3/>
    + Unofficial Documentation: <http://docs.sublimetext.info/en/latest/index.html>
    + Package Control: <https://packagecontrol.io/>
* Version: Build 3126
* Url: `https://download.sublimetext.com/$:ArchiveName$`
* ArchiveName: `Sublime Text $:Version$.zip`
* Exe: `sublime_text.exe`
* Launcher: $:Label$

### Emacs

An extensible, customizable, free text editor - and more.

GNU Emacs at its core is an interpreter for Emacs Lisp, a dialect of the Lisp programming language
with extensions to support text editing.

* ID: `Bench.Emacs`
* Dependencies: `Bench.GnuTLS`
* Website: <https://www.gnu.org/software/emacs/>
* License: GPL-3.0
* Docs:
    + Manual: <https://www.gnu.org/software/emacs/manual/html_node/emacs/index.html>
    + Emacs Lisp: <https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html>
    + Other Manuals: <https://www.gnu.org/software/emacs/manual/index.html>
* Version: 25.1-2
* Url: `http://ftp.gnu.org/gnu/emacs/windows/$:ArchiveName$`
* ArchiveName: `emacs-$:Version$-x86_64-w64-mingw32.zip`
* Dir: `bench\gnu`
* Path: `bin`
* Exe: `bin\emacs.exe`
* Launcher: $:Label$
* LauncherExecutable: `$:Dir$\bin\runemacs.exe`

### Spacemacs

The best editor is neither Emacs nor Vim, it's Emacs and Vim!

* ID: `Bench.Spacemacs`
* Typ: `meta`
* Dependencies: `Bench.Git`, `Bench.Emacs`
* Website: <http://spacemacs.org/>
* License: GPL-3.0
* Docs:
    + Documentation: <http://spacemacs.org/doc/DOCUMENTATION.html>
    + Configuration Layers: <http://spacemacs.org/doc/LAYERS.html>
    + Layers: <http://spacemacs.org/layers/LAYERS.html>
* SetupTestFile: `$HomeDir$\.emacs.d\spacemacs.mk`

### Vim

Vim is a highly configurable text editor built to enable efficient text editing.
It is an improved version of the vi editor distributed with most UNIX systems.

* ID: `Bench.VimRT`
* Version: $Bench.Vim:Version$
* License: $Bench.Vim:License$
* LicenseUrl: $Bench.Vim:LicenseUrl$
* Url: `http://ftp.vim.org/pub/vim/pc/$:ArchiveName$`
* ArchiveName: `vim$Bench.Vim:Release$rt.zip`
* ArchivePath: `vim\vim$Bench.Vim:Release$`
* Dir: `$Bench.Vim:Dir$`
* Register: `false`
* SetupTestFile: `scripts.vim`

* ID: `Bench.VimConsole`
* Dependencies: `Bench.VimRT`
* Version: $Bench.Vim:Version$
* License: $Bench.Vim:License$
* LicenseUrl: $Bench.Vim:LicenseUrl$
* Url: `http://ftp.vim.org/pub/vim/pc/$:ArchiveName$`
* ArchiveName: `vim$Bench.Vim:Release$w32.zip`
* ArchivePath: `vim\vim$Bench.Vim:Release$`
* Dir: `$Bench.Vim:Dir$`
* Exe: `vim.exe`

* ID: `Bench.Vim`
* Website: <http://www.vim.org>
* License: GPL compatible
* LicenseUrl: <http://vimdoc.sourceforge.net/htmldoc/uganda.html#license>
* Docs:
    + Overview: <http://www.vim.org/docs.php>
    + Vimdoc: <http://vimdoc.sourceforge.net/>
    + User Manual: <http://vimdoc.sourceforge.net/htmldoc/usr_toc.html>
* Dependencies: `Bench.VimRT`, `Bench.VimConsole`
* VersionMajor: 8
* VersionMinor: 0
* Version: $:VersionMajor$.$:VersionMinor$
* Release: $:VersionMajor$$:VersionMinor$
* Url: `http://ftp.vim.org/pub/vim/pc/$:ArchiveName$`
* ArchiveName: `gvim$:Release$.zip`
* ArchivePath: `vim\vim$:Release$`
* Exe: `gvim.exe`
* Launcher: $:Label$

### LightTable

The next generation code editor.

* ID: `Bench.LightTable`
* Website: <http://lighttable.com>
* License: MIT
* LicenseUrl: <https://github.com/LightTable/LightTable/blob/master/LICENSE.md>
* Docs:
    + Documentation: <http://docs.lighttable.com/>
* Version: 0.8.1
* Url: `https://github.com/LightTable/LightTable/releases/download/$:Version$/$:ArchiveName$`
* ArchiveName: `lighttable-$:Version$-windows.zip`
* ArchivePath: `lighttable-$:Version$-windows`
* Dir: `bench\lt`
* Exe: `LightTable.exe`
* Launcher: $:Label$

### Nightcode

An IDE for Clojure.

* ID: `Bench.Nightcode`
* Dependencies: `Bench.JRE8`
* Website: <https://sekao.net/nightcode/>
* License: Public Domain
* LicenseUrl: <https://raw.githubusercontent.com/oakes/Nightcode/master/UNLICENSE>
* Version: 2.3.0
* Url: `https://github.com/oakes/Nightcode/releases/download/$:Version$/$:ResourceName$`
* ResourceName: `Nightcode-$:Version$.jar`
* Exe: `$:ResourceName$`
* Launcher: $:Label$
* LauncherExecutable: `$Bench.JRE8:Path$\javaw.exe`
* LauncherArguments: `-jar`, `$:Exe$`

### Eclipse for Java

The essential tools for any Java developer, including a Java IDE, a Git client,
XML Editor, Mylyn, Maven and Gradle integration...

* ID: `Bench.EclipseJava`
* Label: Eclipse for Java
* Version: 4.6
* CodeName: neon
* Release: 2
* Dependencies: `Bench.JRE8`
* Website: <http://www.eclipse.org/>
* License: EFSUA
* LicenseUrl: <http://www.eclipse.org/legal/epl/notice.php>
* Url: `http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/$:CodeName$/$:Release$/$:ArchiveName$`
* ArchiveName: `eclipse-java-$:CodeName$-$:Release$-win32.zip`
* ArchivePath: `eclipse`
* Dir: `bench\eclipse_java`
* Exe: `eclipse.exe`
* Register: `false`
* Launcher: $:Label$

### Eclipse for PHP

The essential tools for any PHP developer, including PHP language support,
Git client, Mylyn and editors for JavaScript, HTML, CSS and...

* ID: `Bench.EclipsePHP`
* Label: Eclipse for PHP
* Version: 4.6
* CodeName: neon
* Release: 2
* Dependencies: `Bench.JRE8`
* Website: <http://www.eclipse.org/>
* License: EFSUA
* LicenseUrl: <http://www.eclipse.org/legal/epl/notice.php>
* Url: `http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/$:CodeName$/$:Release$/$:ArchiveName$`
* ArchiveName: `eclipse-php-$:CodeName$-$:Release$-win32.zip`
* ArchivePath: `eclipse`
* Dir: `bench\eclipse_php`
* Exe: `eclipse.exe`
* Register: `false`
* Launcher: $:Label$

### Eclipse for C/C++

An IDE for C/C++ developers with Mylyn integration.

* ID: `Bench.EclipseCpp`
* Label: Eclipse for C++
* Version: 4.6
* CodeName: neon
* Release: 2
* Dependencies: `Bench.JRE8`
* Website: <http://www.eclipse.org/>
* License: EFSUA
* LicenseUrl: <http://www.eclipse.org/legal/epl/notice.php>
* Url: `http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/$:CodeName$/$:Release$/$:ArchiveName$`
* ArchiveName: `eclipse-cpp-$:CodeName$-$:Release$-win32.zip`
* ArchivePath: `eclipse`
* Dir: `bench\eclipse_cpp`
* Exe: `eclipse.exe`
* Register: `false`
* Launcher: $:Label$

### R Studio

RStudio is an IDE for R.
It includes a console, syntax-highlighting editor that supports
direct code execution, as well as tools for plotting, history,
debugging and workspace management.

* ID: `Bench.RStudio`
* Label: R Studio
* Dependencies: `Bench.R`
* Website: <https://www.rstudio.com>
* License: AGPL-3.0
* Version: 1.0.136
* Url: `https://download1.rstudio.org/$:ArchiveName$`
* ArchiveName: `RStudio-$:Version$.zip`
* Dir: `bench\r-studio`
* Path: `bin`
* Exe: `bin\rstudio.exe`
* Launcher: $:Label$

### Resource Hacker™

Resource Hacker™ has been designed to be the complete resource editing tool: compiling, viewing, decompiling and recompiling resources for both 32bit and 64bit Windows executables. Resource Hacker™ can open any type of Windows executable (\*.exe; \*.dll; \*.scr; \*.mui etc) so that individual resources can be added modified or deleted within these files. Resource Hacker™ can create and compile resource script files (\*.rc), and edit resource files (\*.res) too.

* ID: `Bench.ResourceHacker`
* Label: Resource Hacker™
* Version: latest
* Website: <http://angusj.com/resourcehacker/>
* License: Freeware
* Url: `http://angusj.com/resourcehacker/$:ArchiveName$`
* ArchiveName: `resource_hacker.zip`
* Dir: `bench\reshack`
* Launcher: $:Label$

## Software Development Utilities

### Gulp

The streaming build system.

* ID: `Bench.Gulp`
* Typ: `node-package`
* Website: <http://gulpjs.com>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/gulpjs/gulp/master/LICENSE>
* Docs:
    + npm Package: <https://www.npmjs.com/package/gulp>
    + Getting Started: <https://github.com/gulpjs/gulp/blob/master/docs/getting-started.md
    + API: <https://github.com/gulpjs/gulp/blob/master/docs/API.md>
    + Command-Line: <https://github.com/gulpjs/gulp/blob/master/docs/CLI.md>
    + Unofficial Documentation: <http://gulpjs.org/>
* Version: `>=3.9.0 <4.0.0`
* Exe: `gulp.cmd`

### Grunt

The JavaScript Task Runner

* ID: `Bench.Grunt`
* Typ: `node-package`
* Website: <http://gruntjs.com>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/gruntjs/grunt/master/LICENSE>
* Docs:
    + npm Package: <https://www.npmjs.org/package/grunt>
    + Getting Started: <http://gruntjs.com/getting-started>
    + Sample Gruntfile: <http://gruntjs.com/sample-gruntfile>
    + Creating Tasks: <http://gruntjs.com/creating-tasks>
    + Command-Line: <http://gruntjs.com/using-the-cli>
    + API: <http://gruntjs.com/api/grunt>
* Version: `>=1.0.0 <2.0.0`
* Exe: `grunt.cmd`

### Bower

Web sites are made of lots of things — frameworks, libraries, assets, and utilities.
Bower manages all these things for you.

Bower can manage components that contain HTML, CSS, JavaScript, fonts or even image files.
Bower doesn’t concatenate or minify code or do anything else - it just installs
the right versions of the packages you need and their dependencies.

* ID: `Bench.Bower`
* Typ: `node-package`
* Dependencies: `Bench.Git`
* Website: <https://bower.io/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/bower/bower/master/LICENSE>
* Docs:
    + npm Package: <https://www.npmjs.com/package/bower>
    + Getting Started: <https://bower.io/#getting-started>
    + Commands: <https://bower.io/docs/api/#commands>
* Version: `>=1.7.0 <2.0.0`
* Exe: `bower.cmd`

### Yeoman

The web's scaffolding tool for modern webapps.

Yeoman helps you to kickstart new projects, prescribing best practices and tools
to help you stay productive.

* ID: `Bench.Yeoman`
* Typ: `node-package`
* PackageName: `yo`
* Website: <http://yeoman.io/>
* License: BSD-2-Clause
* Docs:
    + npm Package: <https://www.npmjs.com/package/yo>
    + Getting Started: <http://yeoman.io/learning/index.html>
    + Tutorial: <http://yeoman.io/codelab/index.html>
    + Generators: <http://yeoman.io/generators/>
    + Creating a Generator: <http://yeoman.io/authoring/>
* Version: `>=1.5.0 <2.0.0`
* Exe: `yo.cmd`

### Maven

Apache Maven is a software project management and comprehension tool.
Based on the concept of a project object model (POM), Maven can manage a project's build,
reporting and documentation from a central piece of information.

* ID: `Bench.Maven`
* Dependencies: `Bench.JRE8`, `Bench.GnuPG`
* Website: <https://maven.apache.org>
* License: Apache-2.0
* Docs:
    + Reference: `https://maven.apache.org/ref/$:Version$/`
    + API Docs: `https://maven.apache.org/ref/$:Version$/apidocs/index.html`
* Version: `3.3.9`
* Url: `http://www-eu.apache.org/dist/maven/maven-3/$:Version$/binaries/$:ArchiveName$`
* ArchiveName: `apache-maven-$:Version$-bin.zip`
* ArchivePath: `apache-maven-$:Version$`
* Dir: `bench\mvn`
* Path: `bin`
* Exe: `bin\mvn.cmd`

### NUnit 3 Runner

NUnit is a unit-testing framework for all .Net languages.
The console runner `nunit3-console.exe` executes tests on the console.

* ID: `Bench.NUnitRunners`
* Label: NUnit 3 Runners
* Typ: `nuget-package`
* PackageName: `NUnit.Console`
* Website: <http://nunit.org/>
* License: MIT
* LicenseUrl: <http://nunit.org/nuget/nunit3-license.txt>
* Docs:
    + Documentation: <https://github.com/nunit/docs/wiki>
    + Console Runner: <https://github.com/nunit/docs/wiki/Console-Runner>
    + Command Line: <https://github.com/nunit/docs/wiki/Console-Command-Line>
* Path: `NUnit.ConsoleRunner\tools`
* Exe: `$:Path$\nunit3-console.exe`

### CMake

CMake is an open-source, cross-platform family of tools designed to build,
test and package software. CMake is used to control the software compilation process
using simple platform and compiler independent configuration files, and generate native
makefiles and workspaces that can be used in the compiler environment of your choice.
The suite of CMake tools were created by Kitware in response to the need for a powerful,
cross-platform build environment for open-source projects such as ITK and VTK.

Usually you want to use this app with _MinGW_.

To setup a C/C++ project with CMake and MinGW (`mingw32-make`), you have to activate the _MinGW_ app with the `mingw32-make` package.
Setup your project with a `CMakeLists.txt` file and run `cmake -G "MinGW Makefiles" <project folder>` to generate the `Makefile`. Run `cmake --build <project folder>` to compile the project.

* ID: `Bench.CMake`
* Website: <https://cmake.org/>
* License: BSD-3-Clause
* LicenseUrl: <https://gitlab.kitware.com/cmake/cmake/raw/master/Copyright.txt>
* MajorVersion: 3.7
* Version: $:MajorVersion$.2
* Url: `https://cmake.org/files/v$:MajorVersion$/$:ArchiveName$`
* ArchiveName: `cmake-$:Version$-win32-x86.zip`
* ArchivePath: `cmake-$:Version$-win32-x86`
* Path: `bin`
* Exe: `bin\cmake.exe`

### JSLint

JSLint is a JavaScript program that looks for problems in JavaScript programs.
Is is a code quality tool.

* ID: `Bench.JSLint`
* Typ: `node-package`
* Website: <http://jslint.com/>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/reid/node-jslint/master/LICENSE>
* Docs:
    + npm Package: <https://www.npmjs.com/package/jslint>
    + Help: <http://jslint.com/help.html>
* Exe: `jslint.cmd`

### JSHint

JSHint is a tool that helps to detect errors and potential problems in your JavaScript code.

* ID: `Bench.JSHint`
* Typ: `node-package`
* Website: <http://jshint.com/>
* License: MIT
* LicenseUrl: <https://www.gnu.org/licenses/license-list.html#Expat>
* Docs:
    + npm Package: <https://www.npmjs.com/package/jshint>
    + Documentation: <http://jshint.com/docs/>
    + Command-Line: <http://jshint.com/docs/cli/>
    + API: <http://jshint.com/docs/api/>
* Version: `>=2.9.0 <3.0.0`
* Exe: `jshint.cmd`

### JSBeautify

This little beautifier will reformat and reindent bookmarklets, ugly JavaScript,
unpack scripts packed by Dean Edward’s popular packer,
as well as deobfuscate scripts processed by <http://javascriptobfuscator.com/>.

* ID: `Bench.JSBeautify`
* Typ: `node-package`
* PackageName: `js-beautify`
* Website: <http://jsbeautifier.org/>
* License: MIT
* Version: `>=1.6.8 <2.0.0`
* Exe: `js-beautify.cmd`

Supported commands: `js-beautify`, `css-beautify`, `html-beautify`

### Tern

Tern is a stand-alone, editor-independent JavaScript analyzer
that can be used to improve the JavaScript integration of existing editors.

* ID: `Bench.Tern`
* Typ: `node-package`
* Website: <https://github.com/ternjs/tern>
* License: MIT
* Version: `>=0.20.0 <=1.0.0`

### Bundler

Bundler provides a consistent environment for Ruby projects
by tracking and installing the exact gems and versions that are needed.

* ID: `Bench.Bundler`
* Typ: `ruby-package`
* Website: <http://bundler.io>
* License: MIT
* LicenseUrl: <https://github.com/bundler/bundler/blob/master/LICENSE.md>
* Docs:
    Documentation: <http://bundler.io/docs.html>

### PyReadline for Python 2

Required for colors in IPython.

* ID: `Bench.Python2.PyReadline`
* Label: PyReadline (Python 2)
* PackageName: `pyreadline`
* Typ: `python2-package`
* Website: <https://pypi.python.org/pypi/pyreadline>
* License: BSD-3-Clause

### PyReadline for Python 3

Required for colors in IPython.

* ID: `Bench.Python3.PyReadline`
* Label: PyReadline (Python 3)
* PackageName: `pyreadline`
* Typ: `python3-package`
* Website: <https://pypi.python.org/pypi/pyreadline>
* License: BSD-3-Clause

### IPython 2

IPython provides a rich architecture for computing with a powerful interactive shell.

* ID: `Bench.Python2.IPython`
* Label: IPython 2
* Typ: `python2-package`
* PackageName: `ipython`
* Dependencies: `Bench.Python2.PyReadline`
* Website: <https://ipython.org/>
* License: BSD-3-Clause
* LicenseUrl: <http://ipython.readthedocs.io/en/stable/about/license_and_copyright.html>
* Docs:
    + Documentation: <http://ipython.readthedocs.io/en/stable/>
* Exe: `Scripts\ipython2.exe`
* Launcher: $:Label$

### IPython 3

IPython provides a rich architecture for computing with a powerful interactive shell.

* ID: `Bench.Python3.IPython`
* Label: IPython 3
* Typ: `python3-package`
* PackageName: `ipython`
* Dependencies: `Bench.Python3.PyReadline`
* Website: <https://ipython.org/>
* License: BSD-3-Clause
* LicenseUrl: <http://ipython.readthedocs.io/en/stable/about/license_and_copyright.html>
* Docs:
    + Documentation: <http://ipython.readthedocs.io/en/stable/>
* Exe: `Scripts\ipython3.exe`
* Launcher: $:Label$

### PEP 8 for Python 2

pep8 is a tool to check your Python code against some of the style conventions in PEP 8.

* ID: `Bench.Python2.PEP8`
* Label: PEP8 (Python 2)
* Typ: `python2-package`
* Website: <https://pypi.python.org/pypi/pep8>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/PyCQA/pycodestyle/master/LICENSE>
* Docs:
    + PEP 8 Styleguide: <https://www.python.org/dev/peps/pep-0008/>
* Exe: `Scripts\pep8.exe`

### PEP 8 for Python 3

pep8 is a tool to check your Python code against some of the style conventions in PEP 8.

* ID: `Bench.Python3.PEP8`
* Label: PEP8 (Python 3)
* Typ: `python3-package`
* Website: <https://pypi.python.org/pypi/pep8>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/PyCQA/pycodestyle/master/LICENSE>
* Docs:
    + PEP 8 Styleguide: <https://www.python.org/dev/peps/pep-0008/>
* Exe: `Scripts\pep8.exe`

### Jupyter

Open source, interactive data science and scientific computing
across over 40 programming languages.

* ID: `Bench.Jupyter`
* Typ: `python3-package`
* Website: <https://jupyter.org>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/jupyter/jupyter/master/LICENSE>
* Docs:
    + Running the Notebook: <https://jupyter.readthedocs.io/en/latest/running.html>
* Exe: `Scripts\jupyter.exe`
* SetupTestFile: $:Exe$
* Launcher: Jupyter Notebook
* LauncherArguments: `notebook`

### Zeal

An offline documentation browser inspired by [Dash](https://kapeli.com/dash/).

* ID: `Bench.Zeal`
* Label: Zeal Docs
* Website: <https://zealdocs.org>
* License: GPL-3.0
* Version: 0.3.1
* Url: `https://bintray.com/artifact/download/zealdocs/windows/$:ArchiveName$`
* ArchiveName: `zeal-$:Version$-windows-x86.msi`
* ArchivePath: `SourceDir\PFiles\Zeal`
* RegistryKeys: `Software\Zeal`
* Launcher: $:Label$
* Register: `false`

### Windows Sysinternals Suite

A collection of tools by Mark Russinovich, to inspect and investigate
the Microsoft Windows operating systems and its processes.

* ID: `Bench.SysInternals`
* Website: <https://technet.microsoft.com/de-de/sysinternals>
* License: proprietary
* LicenseUrl: <https://technet.microsoft.com/de-de/sysinternals/bb469936>
* Docs:
    + Downloads: <https://technet.microsoft.com/de-de/sysinternals/bb842062>
    + Forum: <http://forum.sysinternals.com/>
    + Blog: <https://blogs.technet.microsoft.com/sysinternals/>
    + Learning Resources: <https://technet.microsoft.com/de-de/sysinternals/bb469930>
* Version: latest
* Url: <https://download.sysinternals.com/files/SysinternalsSuite.zip>
* ArchiveName: `SysinternalsSuite.zip`
* Exe: `procexp.exe`
* Launcher: `Process Explorer`

## Filesystem

### Sift

Sift - grep on steroids. A fast and powerful alternative to grep.

* ID: `Bench.Sift`
* Website: <https://sift-tool.org/>
* License: GPL-3.0
* Docs:
    + Documentation: <https://sift-tool.org/docs>
* Version: 0.9.0
* Url: `https://sift-tool.org/downloads/sift/$:ArchiveName$`
* ArchiveName: `sift_$:Version$_windows_386.zip`

### WinMerge

WinMerge is an Open Source differencing and merging tool for Windows.
WinMerge can compare both folders and files, presenting differences in a visual text format
that is easy to understand and handle.

* ID: `Bench.WinMerge`
* Website: <http://winmerge.org/>
* License: GPL-2.0
* Docs:
    + Quick Tour: <http://tour.winmerge.org/>
    + Manual: <http://manual.winmerge.org/>
* Version: 2.14.0
* Url: `http://downloads.sourceforge.net/winmerge/$:ArchiveName$`
* ArchiveName: `WinMerge-$:Version$-exe.7z`
* ArchivePath: `WinMerge-$:Version$-exe`
* Exe: `WinMergeU.exe`
* RegistryKeys: `Software\Thingamahoochie`
* Register: `false`
* Launcher: $:Label$

### Ant Renamer

Ant Renamer is a free program that makes easier the renaming of lots of files and folders
by using specified settings.

* ID: `Bench.AntRenamer`
* Label: Ant Renamer
* Website: <http://antp.be/software/renamer>
* License: GPL-3.0
* Docs:
    + Forum: <http://forum.antp.be/phpbb2/index.php?c=5>
* Version: latest
* Url: <http://update.antp.be/renamer/antrenamer2.zip>
* ArchiveName: `antrenamer2.zip`
* Dir: `bench\renamer`
* Exe: `Renamer.exe`
* Launcher: $:Label$

### CDR Tools

Cdrtools is a set of command line programs that allows to record CD/DVD/BluRay media. It includes the following commandline utilities:
`cdrecord`, `readcd`, `cdda2wav`, `mkisofs`, `isodebug`, `isodump`, `isoinfo`, `isovfy`, `rscsi`.

* ID: `Bench.CdrTools`
* Label: CDR Tools
* Website: <http://cdrtools.sourceforge.net/private/cdrecord.html>
* License: GPL-2.0
* Docs:
    + Manual: <http://cdrtools.sourceforge.net/private/man/cdrecord/index.html>
* Url: <https://sourceforge.net/projects/cdrtoolswin/files/1.0/Binaries/CDR-Tools.exe>
* ArchiveName: `CDR-Tools.exe`
* Exe: `mkisofs.exe`

## Network

### cURL

curl is an open source command line tool and library for transferring data with URL syntax,
supporting DICT, FILE, FTP, FTPS, Gopher, HTTP, HTTPS, IMAP, IMAPS, LDAP, LDAPS, POP3, POP3S,
RTMP, RTSP, SCP, SFTP, SMB, SMTP, SMTPS, Telnet and TFTP. curl supports SSL certificates,
HTTP POST, HTTP PUT, FTP uploading, HTTP form based upload, proxies, HTTP/2, cookies,
user+password authentication (Basic, Plain, Digest, CRAM-MD5, NTLM, Negotiate and Kerberos),
file transfer resume, proxy tunneling and more.

* ID: `Bench.cURL`
* Website: <http://curl.haxx.se/>
* License: MIT
* LicenseUrl: <https://curl.haxx.se/docs/copyright.html>
* Docs:
    + Manual: <https://curl.haxx.se/docs/manual.html>
    + Man Page: <https://curl.haxx.se/docs/manpage.html>
* Version: 7.52.1
* Url: `https://bintray.com/artifact/download/vszakats/generic/$:ArchiveName$`
* ArchiveName: `curl-$:Version$-win32-mingw.7z`
* ArchivePath: `curl-$:Version$-win32-mingw`
* Path: `bin`
* Exe: `bin\curl.exe`

### FileZilla

FileZilla Client is a free, open source FTP client. It supports FTP, SFTP, and FTPS (FTP over SSL/TLS).

* ID: `Bench.FileZilla`
* Website: <https://filezilla-project.org/>
* License: GPL-3.0
* Docs:
    + Documentation: <https://wiki.filezilla-project.org/Documentation>
    + Usage: <https://wiki.filezilla-project.org/Using>
    + Tutorial: <https://wiki.filezilla-project.org/FileZilla_Client_Tutorial_(en)>
* Version: 3.24.0
* Url: `http://sourceforge.net/projects/filezilla/files/FileZilla_Client/$:Version$/$:ArchiveName$`
* ArchiveName: `FileZilla_$:Version$_win32.zip`
* ArchivePath: `FileZilla-$:Version$`
* Exe: `filezilla.exe`
* Register: `false`
* Launcher: $:Label$

### SRWare Iron

A free portable derivative of Chromium, optimized for privacy.

* ID: `Bench.Iron`
* Label: SWare Iron
* Website: <http://www.chromium.org/Home>
* License: Mixed OS License
* Version: latest
* Url: <http://www.srware.net/downloads/IronPortable.zip>
* ArchivePath: `IronPortable\Iron`
* ArchiveName: `IronPortable.zip`
* Exe: `chrome.exe`
* Launcher: $:Label$

## Services

### MySQL

According to Oracle:
MySQL Community Edition is the freely downloadable version
of the world's most popular open source database.

The MySQL data is stored in `%USERPROFILE%\mysql_data`.
You can start the MySQL server by running `mysql_start` in the _Bench_ shell.
You can stop the MySQL server by running `mysql_stop` in the _Bench_ shell.
The initial password for _root_ is `bench`.

* ID: `Bench.MySQL`
* Website: <http://www.mysql.com/>
* License: GPL-2.0
* Docs:
    + Documentation: `http://dev.mysql.com/doc/refman/$:VersionMajor$/en/`
    + SQL Syntax: `http://dev.mysql.com/doc/refman/$:VersionMajor$/en/sql-syntax.html`
    + Data Types: `http://dev.mysql.com/doc/refman/$:VersionMajor$/en/data-types.html`
    + Functions: `http://dev.mysql.com/doc/refman/$:VersionMajor$/en/functions.html`
* VersionMajor: 5.7
* Version: $:VersionMajor$.17
* Url: `http://dev.mysql.com/get/Downloads/MySQL-$:VersionMajor$/$:ArchiveName$`
* ArchiveName: `mysql-$:Version$-win32.zip`
* ArchivePath: `mysql-$:Version$-win32`
* Path: `bin`
* Exe: `bin\mysqld.exe`
* MySqlDataDir: `$HomeDir$\mysql_data`
* Environment:
    + `MYSQL_DATA`: `$:MySqlDataDir$`

### MySQL Utilities

* ID: `Bench.MySQLUtils`
* Label: MySQL Utilities
* Website: <https://dev.mysql.com/downloads/utilities/>
* License: GPL-2.0
* Docs:
    + Documentation: `https://dev.mysql.com/doc/mysql-utilities/$:VersionMajor$/en/`
* VersionMajor: 1.6
* Version: $:VersionMajor$.5
* Url: `https://dev.mysql.com/get/Downloads/MySQLGUITools/$:ArchiveName$`
* ArchiveName: `mysql-utilities-$:Version$-win32.msi`
* ArchivePath: `SourceDir\MySQL\MySQL Utilities $:VersionMajor$`
* SetupTestFile: `mysqlserverinfo.exe`

### MySQL Workbench

MySQL Workbench is a unified visual tool for database architects, developers, and DBAs.
MySQL Workbench provides data modeling, SQL development, and comprehensive administration
tools for server configuration, user administration, backup, and much more.

This application needs the x86 version of the [Visual C++ 12 Redistributable](https://www.microsoft.com/download/details.aspx?id=40784),
and the [Microsoft.NET Framework 4.0 Client Profile](http://www.microsoft.com/download/details.aspx?id=17113) installed.

* ID: `Bench.MySQLWB`
* Label: MySQL Workbench
* Website: <http://dev.mysql.com/downloads/workbench/>
* License: GPL-2.0
* Docs:
    + Documentation: <http://dev.mysql.com/doc/workbench/en/>
* Version: 6.3.8
* Url: `http://dev.mysql.com/get/Downloads/MySQLGUITools/$:ArchiveName$`
* ArchiveName: `mysql-workbench-community-$:Version$-win32-noinstall.zip`
* ArchivePath: `MySQL Workbench $:Version$ CE (win32)`
* Exe: `MySQLWorkbench.exe`
* Register: `false`
* Launcher: $:Label$

### PostgreSQL

PostgreSQL is a powerful, open source object-relational database system.
It has more than 15 years of active development and a proven architecture
that has earned it a strong reputation for reliability, data integrity, and correctness.
It is fully ACID compliant, has full support for foreign keys, joins, views,
triggers, and stored procedures (in multiple languages).
It also supports storage of binary large objects, including pictures, sounds, or video.
It has native programming interfaces for C/C++, Java, .Net, Perl, Python,
Ruby, Tcl, ODBC, among others

Contains the _PostgreSQL Server_ and the management tool _pgAdminIII_.
The initial password for _postgres_ is `bench`.

* ID: `Bench.PostgreSQL`
* Website: <http://www.postgresql.org>
* License: PostgreSQL
* LicenseUrl: <https://opensource.org/licenses/postgresql>
* Docs:
    + Documentation: <https://www.postgresql.org/docs/9.5/static/index.html>
* Version: 9.6.1-1
* Url: `http://get.enterprisedb.com/postgresql/$:ArchiveName$`
* ArchiveName: `postgresql-$:Version$-windows-binaries.zip`
* ArchivePath: `pgsql`
* Dir: `bench\postgres`
* Path: `bin`
* Exe: `bin\postgres.exe`
* RegistryKeys: `Software\pgAdmin Development Team`
* Launcher: `PostgreSQL Admin 4`
* LauncherExecutable: `pgAdmin 4\bin\pgAdmin4.exe`
* AdornedExecutables: `pgAdmin 4\bin\pgAdmin4.exe`
* PostgreSqlDataDir: `$HomeDir$\pg_data`
* PostgreSqlLogFile: `$HomeDir$\pg.log`
* Environment:
	+ `PGDATA`: `$:PostgreSqlDataDir$`
	+ `PG_LOG`: `$:PostgreSqlLogFile$`

### Apache

The Apache HTTP Server is a secure, efficient and extensible server
that provides HTTP services in sync with the current HTTP standards.
The Apache HTTP Server is the most popular web server since over 20 years.

This application needs the x86 version of the [Visual C++ 14 Redistributable](https://www.microsoft.com/download/details.aspx?id=48145) installed.

* ID: `Bench.Apache`
* Website: <https://httpd.apache.org/>
* License: Apache-2.0
* LicenseUrl: <http://www.apache.org/licenses/LICENSE-2.0>
* Docs:
    + Documentation: <http://httpd.apache.org/docs/2.4/en/>
* Version: 2.4.25
* Url: `http://www.apachelounge.com/download/VC14/binaries/$:ArchiveName$`
* ArchiveName: `httpd-$:Version$-win32-VC14.zip`
* ArchivePath: `Apache24`
* Path: `bin`
* Exe: `bin\httpd.exe`
* HttpdDocumentRoot: `$HomeDir$\www`
* HttpdListen: `127.0.0.1:80`

### RabbitMQ

RabbitMQ is ...  
Robust messaging for applications,
Easy to use,
Runs on all major operating systems,
Supports a huge number of developer platforms,
Open source and commercially supported

* ID: `Bench.RabbitMQ`
* Website: <http://www.rabbitmq.com>
* License: MPL-1.1
* LicenseUrl: <https://www.rabbitmq.com/mpl.html>
* Docs:
    + Documentation: <http://www.rabbitmq.com/documentation.html>
    + Web Interface: <http://localhost:15672/>
* Dependencies: `Bench.Erlang`
* Version: 3.6.6
* Url: `http://www.rabbitmq.com/releases/rabbitmq-server/v$:Version$/$:ArchiveName$`
* ArchiveName: `rabbitmq-server-windows-$:Version$.zip`
* ArchivePath: `rabbitmq_server-$:Version$`
* Path: `sbin`
* Exe: `sbin\rabbitmq-server.bat`

The setup automatically activates the web management plugin.
So after starting the server on the command line with `rabbitmq-server`,
the web UI is available under <http://localhost:15672/>.
At first start you can login with user `guest` and passwort `guest`.

## Writing

### MiKTeX

MiKTeX (pronounced mick-tech) is an up-to-date implementation of TeX/LaTeX
and related programs for Windows (all current variants).

* ID: `Bench.MiKTeX`
* Website: <http://miktex.org/portable>
* License: Mixed OS License
* Docs:
    + Manual: <http://docs.miktex.org/2.9/manual/>
    + LaTeX Guides: <https://latex-project.org/guides/>
* Version: 2.9.6221
* Url: `http://ctan.space-pro.be/tex-archive/systems/win32/miktex/setup/$:ArchiveName$`
* ArchiveName: `miktex-portable-$:Version$.exe`
* ArchivePath: `texmfs`
* Path: `install\miktex\bin`
* Exe: `install\miktex\bin\latex.exe`
* Launcher: `MiKTeX Tray Icon`
* LauncherExecutable: `install\miktex\bin\miktex-taskbar-icon.exe`
* LauncherIcon: `install\miktex\bin\mo.exe`
* DefaultPackages:
    + `koma-script`
    + `upquote`
    + `mathspec`
    + `etoolbox`
    + `l3kernel`
    + `l3packages`
    + `tipa`
    + `realscripts`
    + `metalogo`
    + `microtype`
    + `url`
    + `makecmds`
    + `fancyvrb`
    + `booktabs`

**Note:** The packages installed by default (property `DefaultPackages`)
are selected to suit the needs of the default LaTeX template of _Pandoc_.

### Pandoc

Pandoc is a library and command-line tool for converting from one markup format to another.

* ID: `Bench.Pandoc`
* Website: <https://github.com/jgm/pandoc/releases/latest>
* License: GPL-2.0
* LicenseUrl: `https://hackage.haskell.org/package/pandoc-$:Version$/src/COPYING.md`
* Docs:
    + User's Guide: <http://pandoc.org/README.html>
    + FAQ: <http://pandoc.org/faqs.html>
* Version: 1.19.1
* Release: $:Version$
* Url: `https://github.com/jgm/pandoc/releases/download/$:Version$/$:ArchiveName$`
* ArchiveName: `pandoc-$:Release$-windows.msi`
* ArchivePath: `SourceDir\Pandoc`
* Exe: `pandoc.exe`

### JabRef

JabRef is an open source bibliography reference manager.
The native file format used by JabRef is BibTeX, the standard LaTeX bibliography format.

* ID: `Bench.JabRef`
* Dependencies: `Bench.JRE8`
* Website: <http://www.jabref.org>
* License: MIT
* LicenseUrl: <https://github.com/JabRef/jabref/blob/master/LICENSE.md>
* Docs:
    + Help: <http://help.jabref.org/en/>
    + FAQ: <http://www.jabref.org/faq/>
* Version: 3.8.2
* Url: `https://github.com/JabRef/jabref/releases/download/v$:Version$/$:ResourceName$`
* ResourceName: `JabRef-$:Version$.jar`
* Exe: `$:ResourceName$`
* Launcher: $:Label$
* LauncherExecutable: `$Bench.JRE8:Path$\javaw.exe`
* LauncherArguments: `-jar`, `$:Exe$`

### TeXnicCenter

Premium LaTeX Editing for Windows.

* ID: `Bench.TeXnicCenter`
* Dependencies: `Bench.MiKTeX`
* Website: <http://www.texniccenter.org>
* License: GPL-2.0
* Docs:
    + Features: <http://www.texniccenter.org/about/feature/>
    + Documentation: <http://texniccenter.sourceforge.net/>
* Version: 2.02
* Url: `http://sourceforge.net/projects/texniccenter/files/TeXnicCenter/$:Version$%20Stable/$:ArchiveName$`
* ArchiveName: `TXCSetup_$:Version$Stable_Win32.exe`
* ArchiveTyp: `inno`
* RegistryKeys: `SOFTWARE\ToolsCenter`
* Launcher: $:Label$

### Scribus

Scribus is a page layout program, available for a lot of operating systems.
Since its humble beginning in the spring of 2001, Scribus has evolved into
one of the premier Open Source desktop applications.

* ID: `Bench.Scribus`
* Website: <https://www.scribus.net/>
* License: GPL-2.0
* Docs:
    + Wiki: <https://wiki.scribus.net/canvas/Scribus>
    + Manual: <https://wiki.scribus.net/canvas/Help:TOC>
    + HowTo: <https://wiki.scribus.net/canvas/Category:HOWTO>
* Version: 1.4.6
* Url: `https://sourceforge.net/projects/scribus/files/scribus/$:Version$/$:ArchiveName$`
* ArchiveName: `scribus-$:Version$-windows.exe`
* Register: `false`
* Launcher: $:Label$

## Web

### Less

Less is a CSS pre-processor, meaning that it extends the CSS language,
adding features that allow variables, mixins, funtions and many other techniques
that allow you to make CSS that is more maintainable, themable and extendable.

Less runs inside Node, the browser and inside Rhino.
There are also many 3rd party tools that allow you to compile your files and watch for changes.

* ID: `Bench.Less`
* Website: `lesscss.org`
* License: Apache-2.0
* Docs:
    + Language Features: <http://lesscss.org/features/>
    + Function Reference: <http://lesscss.org/functions/>
* Typ: `node-package`
* Exe: `lessc.cmd`

The shell command of Less is `lessc`.

### SASS

Sass is the most mature, stable, and powerful professional grade CSS extension language in the world.

* ID: `Bench.Sass`
* Label: SASS
* Typ: `ruby-package`
* Website: <http://sass-lang.com/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/sass/sass/stable/MIT-LICENSE>
* Docs:
    + Guide: <http://sass-lang.com/guide>
    + Reference: <http://sass-lang.com/documentation/file.SASS_REFERENCE.html>

### Hugo

A fast and modern static website engine.

Hugo flexibly works with many formats and is ideal for blogs, docs, portfolios
and much more. Hugo’s speed fosters creativity and makes building a website fun again.

* ID: `Bench.Hugo`
* Website: <https://gohugo.io/>
* License: Apache-2.0
* LicenseUrl: <https://github.com/spf13/hugo/blob/master/LICENSE.md>
* Docs:
    + Introduction: <https://gohugo.io/overview/introduction/>
    + Commands: <https://gohugo.io/commands/>
    + Content Organization: <https://gohugo.io/content/organization/>
    + Templates: <https://gohugo.io/templates/overview/>
    + Taxonomies: <https://gohugo.io/taxonomies/overview/>
    + Theme Showcase: <http://themes.gohugo.io/>
* Version: 0.18.1
* Url: `https://github.com/spf13/hugo/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `hugo_$:Version$_windows-32bit.zip`

## Multimedia

### Graphics Magick

GraphicsMagick is the swiss army knife of image processing. It provides a robust
and efficient collection of tools and libraries which support reading, writing,
and manipulating an image in over 88 major formats including important formats
like DPX, GIF, JPEG, JPEG-2000, PNG, PDF, PNM, and TIFF.

* ID: `Bench.GraphicsMagick`
* Label: Graphics Magick
* Website: <http://www.graphicsmagick.org/>
* License: Mixed OS License
* LicenseUrl: <https://sourceforge.net/p/graphicsmagick/code/ci/default/tree/Copyright.txt>
* Docs:
    + Utilities: <http://www.graphicsmagick.org/utilities.html>
    + FAQ: <http://www.graphicsmagick.org/FAQ.html>
    + APIs: <http://www.graphicsmagick.org/programming.html>
    + Supported Formats: <http://www.graphicsmagick.org/programming.html>
    + Color Reference: <http://www.graphicsmagick.org/color.html>
* Version: 1.3.25
* Url: `http://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/$:Version$/$:ArchiveName$`
* ArchiveName: `GraphicsMagick-$:Version$-Q16-win32-dll.exe`
* ArchiveTyp: `inno`
* Dir: `bench\gm`
* Exe: `gm.exe`

### FFmpeg

FFmpeg is the leading multimedia framework, able to decode, encode, transcode,
mux, demux, stream, filter and play pretty much anything that humans and machines have created.
It supports the most obscure ancient formats up to the cutting edge.
No matter if they were designed by some standards committee, the community or a corporation.

* ID: `Bench.FFmpeg`
* Website: <https://www.ffmpeg.org/>
* License: LGPL-2.1
* LicenseUrl: <https://github.com/FFmpeg/FFmpeg/blob/master/LICENSE.md>
* Docs:
    + Overview: <http://ffmpeg.org/documentation.html>
    + ffmpeg Tool: <http://ffmpeg.org/ffmpeg.html>
    + ffplay Tool: <http://ffmpeg.org/ffplay.html>
    + ffprobe Tool: <http://ffmpeg.org/ffprobe.html>
    + ffserver Tool: <http://ffmpeg.org/ffserver.html>
    + Wiki: <https://trac.ffmpeg.org/wiki>
* Version: latest
* Url: `http://ffmpeg.zeranoe.com/builds/win32/shared/$:ArchiveName$`
* ArchiveName: `ffmpeg-$:Version$-win32-shared.7z`
* ArchivePath: `ffmpeg-$:Version$-win32-shared`
* Path: `bin`
* Exe: `bin\ffmpeg.exe`

### HandBrake CLI

The command line interface for the open source video transcoder.

* ID: `Bench.HandBrakeCLI`
* Website: <https://handbrake.fr>
* License: GPL-2.0
* Version: 1.0.2
* Url: `https://handbrake.fr/rotation.php?file=$:ArchiveName$`
* ArchiveName: `HandBrakeCLI-$:Version$-win-x86_64.zip`
* Dir: `bench\handbrake`
* Exe: `HandBrakeCLI.exe`

### HandBrake

The open source video transcoder.

* ID: `Bench.HandBrake`
* Website: <https://handbrake.fr>
* License: GPL-2.0
* Version: 1.0.2
* Url: `https://handbrake.fr/rotation.php?file=$:ArchiveName$`
* ArchiveName: `HandBrake-$:Version$-x86_64-Win_GUI.exe`
* Exe: `HandBrake.exe`
* Launcher: $:Label$

### VLC

VLC is a free and open source cross-platform multimedia player and framework
that plays most multimedia files, and various streaming protocols.

* ID: `Bench.VLC`
* Label: VLC Player
* Website: <http://www.videolan.org/vlc/>
* License: GPL-2.0
* Docs:
    + Features: <http://www.videolan.org/vlc/features.html>
    + Skins: <http://www.videolan.org/vlc/skins.html>
* Version: 2.2.4
* Url: `http://get.videolan.org/vlc/$:Version$/win32/$:ArchiveName$`
* ArchiveName: `vlc-$:Version$-win32.7z`
* ArchivePath: `vlc-$:Version$`
* Launcher: $:Label$

### Graphviz

Graphviz is open source graph visualization software.
Graph visualization is a way of representing structural information as diagrams
of abstract graphs and networks. It has important applications in networking,
bioinformatics,  software engineering, database and web design, machine learning,
and in visual interfaces for other technical domains.

* ID: `Bench.Graphviz`
* Website: <http://www.graphviz.org/>
* License: EPL-1.0
* LicenseUrl: <http://www.graphviz.org/License.php>
* Docs:
    + Overview: <http://www.graphviz.org/Documentation.php>
    + The DOT Language: <http://www.graphviz.org/content/dot-language>
    + Attributes: <http://www.graphviz.org/content/attrs>
    + Color Names: <http://www.graphviz.org/content/color-names>
    + Node Shapes: <http://www.graphviz.org/content/node-shapes>
    + Arrow Shapes: <http://www.graphviz.org/content/arrow-shapes>
    + Command-Line Invocation: <http://www.graphviz.org/content/command-line-invocation>
    + Output Formats: <http://www.graphviz.org/content/output-formats>
* Version: 2.38
* Url:`http://www.graphviz.org/pub/graphviz/stable/windows/$:ArchiveName$`
* ArchiveName: `graphviz-$:Version$.zip`
* ArchivePath: `release`
* Path: `bin`
* Exe: `bin\dot.exe`

### Dia

Dia is a program to draw structured diagrams.

* ID: `Bench.Dia`
* Website: <https://wiki.gnome.org/Apps/Dia>
* License: GPL-2.0
* Docs:
    + Overview: <https://wiki.gnome.org/Apps/Dia/Documentation>
    + Manual: <http://dia-installer.de/doc/en/index.html>
    + FAQ: <https://wiki.gnome.org/Apps/Dia/Faq>
* Version: 0.97.2
* Release: 0.97.2-2
* Url: `http://sourceforge.net/projects/dia-installer/files/dia-win32-installer/$:Version$/$:ArchiveName$`
* ArchiveName: `dia-setup-$:Release$-unsigned.exe`
* Path: `bin`
* Exe: `bin\dia.exe`
* Launcher: $:Label$
* LauncherExecutable: `bin\diaw.exe`
* LauncherArguments: `--integrated`, `%*`

### Inkscape

Inkscape is a professional vector graphics editor for Windows, Mac OS X and Linux.
It's free and open source.

* ID: `Bench.Inkscape`
* Website: <https://inkscape.org/>
* License: GPL-2.0
* LicenseUrl: <https://inkscape.org/en/about/license/>
* Docs:
    + Manual: <http://tavmjong.free.fr/INKSCAPE/MANUAL/html/>
    + Tutorials: <https://inkscape.org/en/learn/tutorials/>
    + FAQ: <https://inkscape.org/en/learn/faq/>
    + Command Line Reference: <https://inkscape.org/en/doc/inkscape-man.html>
    + Keyboard Shortcuts: <https://inkscape.org/en/doc/keys091.html>
* Version: 0.92.0
* Url: <https://inkscape.org/en/gallery/item/3932/download/>
* ArchiveName: `Inkscape-$:Version$-win32.7z`
* ArchivePath: `inkscape`
* Exe: `inkscape.exe`
* Launcher: $:Label$

### GIMP

The GNU Image Manipulation Program.

GIMP is a cross-platform image editor.
Whether you are a graphic designer, photographer, illustrator, or scientist,
GIMP provides you with sophisticated tools to get your job done.

* ID: `Bench.Gimp`
* Label: GIMP
* Website: <http://www.gimp.org/>
* License: GPL-3.0
* LicenseUrl: <https://git.gnome.org/browse/gimp/plain/COPYING>
* Docs:
    + Manual: <http://docs.gimp.org/2.8/en/>
    + Tutorials: <http://www.gimp.org/tutorials/>
* Version: 2.8.18
* Url: `https://sourceforge.net/projects/portableapps/files/GIMP Portable/$:ArchiveName$`
* ArchiveName: `GIMPPortable_$:Version$.paf.exe`
* ArchivePath: `App/gimp`
* Exe: `bin\gimp-2.8.exe`
* Register: `false`
* Launcher: $:Label$

### XnView

XnView is an efficient multimedia viewer, browser and converter.
Really simple to use!
Support of more than 500 image formats.

* ID: `Bench.XnView`
* Website: <http://www.xnview.com/>
* License: Commercial
* Version: latest
* Url: `http://download.xnview.com/$:ArchiveName$`
* ArchiveName: `XnView-win.zip`
* ArchivePath: `XnView`
* Register: `false`
* Launcher: $:Label$

### ExifTool

ExifTool is a platform-independent Perl library plus a command-line application
for reading, writing and editing meta information in a wide variety of files.

ExifTool supports many different metadata formats including
EXIF, GPS, IPTC, XMP, JFIF, GeoTIFF, ICC Profile, Photoshop IRB, FlashPix, AFCP and ID3,
as well as the maker notes of many digital cameras by
Canon, Casio, DJI, FLIR, FujiFilm, GE, HP, JVC/Victor, Kodak, Leaf,
Minolta/Konica-Minolta, Motorola, Nikon, Nintendo, Olympus/Epson, Panasonic/Leica,
Pentax/Asahi, Phase One, Reconyx, Ricoh, Samsung, Sanyo, Sigma/Foveon and Sony.

* ID: `Bench.ExifTool`
* Website: <http://www.sno.phy.queensu.ca/~phil/exiftool/>
* License: GPL, Artistic
* LicenseUrl: <http://www.sno.phy.queensu.ca/~phil/exiftool/#license>
* Docs:
    + Documentation: <http://www.sno.phy.queensu.ca/~phil/exiftool/exiftool_pod.html>
* Version: 10.41
* Url: `http://www.sno.phy.queensu.ca/~phil/exiftool/$:ArchiveName$`
* ArchiveName: `exiftool-$:Version$.zip`

### LMMS

Open source digital audio workstation with VST support.

* ID: `Bench.LMMS`
* Website: <https://lmms.io/>
* License: GPL-2.0
* Version: 1.1.3
* Url: `https://github.com/LMMS/lmms/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `lmms-$:Version$-win32.exe`
* Register: `false`
* Launcher: $:Label$

## 3D Modeling

### MeshLab

MeshLab is an open source, portable, and extensible system for the processing
and editing of unstructured 3D triangular meshes.
The system is aimed to help the processing of the typical not-so-small
unstructured models arising in 3D scanning, providing a set of tools for editing,
cleaning, healing, inspecting, rendering and converting this kind of meshes.

* ID: `Bench.MeshLab`
* Version: 2016.12
* Website: <http://meshlab.sourceforge.net/>
* License: GPL-3.0
* LicenseUrl: <https://raw.githubusercontent.com/cnr-isti-vclab/meshlab/master/LICENSE.txt>
* Url: `https://github.com/cnr-isti-vclab/meshlab/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `MeshLab$:Version$.exe`
* Exe: `meshlab.exe`
* Launcher: $:Label$

### Blender

Blender is the open source, cross platform suite of tools for 3D creation.

* ID: `Bench.Blender`
* Website: <https://www.blender.org>
* License: GPL-3.0
* LicenseUrl: <https://www.blender.org/about/license/>
* Docs:
    + Features: <https://www.blender.org/features/>
    + Tutorials: <https://www.blender.org/support/tutorials/>
    + Manual: <https://www.blender.org/manual/>
    + Python API: <https://www.blender.org/api/blender_python_api_2_78_1/>
* Version: 2.78
* VersionSuffix: a
* Url: `http://download.blender.org/release/Blender$:Version$/$:ArchiveName$`
* ArchiveName: `blender-$:Version$$:VersionSuffix$-windows32.zip`
* ArchivePath: `blender-$:Version$$:VersionSuffix$-windows32`
* Launcher: $:Label$

### FreeCAD

* ID: `Bench.FreeCAD`
* Version: 0.16
* Build: 6706
* Hash: f86a4e4
* Website: <http://www.freecadweb.org/>
* License: GPL-2.0
* LicenseUrl: <https://raw.githubusercontent.com/FreeCAD/FreeCAD/master/COPYING>
* Docs:
    + Features: <http://www.freecadweb.org/wiki/index.php?title=Feature_list>
    + Documentation: <http://www.freecadweb.org/wiki/>
    + User: <http://www.freecadweb.org/wiki/index.php?title=User_hub>
    + Power User: <http://www.freecadweb.org/wiki/index.php?title=Power_users_hub>
    + Development: <http://www.freecadweb.org/wiki/index.php?title=Developer_hub>
* Url: `https://github.com/FreeCAD/FreeCAD/releases/download/$:Version$/$:ArchiveName$`
* ArchiveName: `FreeCAD.$:Version$.$:Build$.$:Hash$-WIN-x86-installer.exe`
* Exe: `bin\freecad.exe`
* Launcher: $:Label$
