# Default App Library

## Groups

### Web Development

* ID: `Bench.Group.WebDevelopment`
* Label: Web Development
* Typ: `group`
* Dependencies:
    + `Bench.Group.JavaScriptDevelopment`
    + `Bench.Bower`
    + `Bench.Less`
    + `Bench.Sass`
    + `Bench.JSBeautify`

### JavaScript Development

* ID: `Bench.Group.JavaScriptDevelopment`
* Label: JavaScript Development
* Typ: `group`
* Dependencies:
    + `Bench.Node`
    + `Bench.JSHint`
    + `Bench.JSLint`
    + `Bench.JSBeautify`
    + `Bench.Tern`
    + `Bench.Atom`

### Java Development

* ID: `Bench.Group.JavaDevelopment`
* Label: Java Development
* Typ: `group`
* Dependencies:
    + `Bench.JDK8`
    + `Bench.Maven`
    + `Bench.EclipseJava`

### Clojure Development

* ID: `Bench.Group.ClojureDevelopment`
* Label: Clojure Development
* Typ: `group`
* Dependencies:
    + `Bench.Group.JavaDevelopment`
    + `Bench.Leiningen`
    + `Bench.BootClj`
    + `Bench.Inlein`
    + `Bench.Nightcode`

### PHP Development

* ID: `Bench.Group.PHPDevelopment`
* Label: PHP Development
* Typ: `group`
* Dependencies:
    + `Bench.PHP7`
    + `Bench.Apache`
    + `Bench.MySQL`
    + `Bench.MySQLWB`
    + `Bench.EclipsePHP`
    + `Bench.Composer`

### Python 2 Development

* ID: `Bench.Group.Python2Development`
* Label: Python 2 Development
* Typ: `group`
* Dependencies:
    + `Bench.Python2`
    + `Bench.Pipenv`
    + `Bench.Python2.IPython`
    + `Bench.Python.PEP8`

### Python 3 Development

* ID: `Bench.Group.Python3Development`
* Label: Python 3 Development
* Typ: `group`
* Dependencies:
    + `Bench.Python3`
    + `Bench.Pipenv`
    + `Bench.Python3.IPython`
    + `Bench.Python.PyCodeStyle`

### Ruby Development

* ID: `Bench.Group.RubyDevelopment`
* Label: Ruby Development
* Typ: `group`
* Dependencies:
    + `Bench.Ruby`
    + `Bench.RubyGems`

### C/C++ Development

* ID: `Bench.Group.CppDevelopment`
* Label: C/C++ Development
* Typ: `group`
* Dependencies:
    + `Bench.MinGW`
    + `Bench.CMake`
    + `Bench.EclipseCpp`

### Data Science

* ID: `Bench.Group.DataScience`
* Label: Data Science
* Typ: `group`
* Dependencies:
    + `Bench.Python3`
    + `Bench.Python3.SciPy`
    + `Bench.Python3.SciKitLearn`
    + `Bench.Python3.Spyder`
    + `Bench.TensorFlow`
    + `Bench.SublimeText3`
    + `Bench.R`
    + `Bench.RStudio`
    + `Bench.Python.Dbt`
    + `Bench.Python3.Superset`
    + `Bench.Graphviz`
    + `Bench.Gephi`

### LaTeX Writing

* ID: `Bench.Group.LaTeXWriting`
* Label: LaTeX Writing
* Typ: `group`
* Dependencies:
    + `Bench.MiKTeX`
    + `Bench.TeXnicCenter`
    + `Bench.JabRef`

## Security

### OpenSSL

OpenSSL is an open source project that provides a robust, commercial-grade, and full-featured toolkit for the Transport Layer Security (TLS) and Secure Sockets Layer (SSL) protocols.
It is also a general-purpose cryptography library.

* ID: `Bench.OpenSSL`
* Tags:
    + cryptography
    + cli
* Website: <https://www.openssl.org/>
* License: BSD-Style
* LicenseUrl: https://www.openssl.org/source/license.html
* Docs:
    + Overview: <https://www.openssl.org/docs/man1.0.2/apps/openssl.html>
    + Commands: <https://www.openssl.org/docs/man1.0.2/apps/>
    + Windows Build: <http://slproweb.com/products/Win32OpenSSL.html>
* Version: 1.1.0h
* Version2: 1_1_0h
* Url: `http://slproweb.com/download/$:ArchiveName$`
* ArchiveName32Bit: `Win32OpenSSL-$:Version2$.exe`
* ArchiveName64Bit: `Win64OpenSSL-$:Version2$.exe`
* ArchiveTyp: `inno`
* Path: `bin`
* Exe: `bin\openssl.exe`

### GNU TLS

The GnuTLS Transport Layer Security Library.

* ID: `Bench.GnuTLS`
* Tags:
    + cryptography
    + network
    + cli
* Label: GNU TLS
* Website: <http://www.gnutls.org/>
* License: LGPL-2.1
* LicenseUrl: <https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html>
* Docs:
    + Manual: <http://www.gnutls.org/manual/gnutls.html>
* Version: 3.6.0.1
* Release: 3_6_0_1
* Url32Bit: `https://gitlab.com/gnutls/gnutls/builds/artifacts/gnutls_$:Release$/download?job=MinGW32/DLLs`
* Url64Bit: `https://gitlab.com/gnutls/gnutls/builds/artifacts/gnutls_$:Release$/download?job=MinGW64/DLLs`
* ArchiveName32Bit: `gnutls-$:Version$-w32-bin.zip`
* ArchiveName64Bit: `gnutls-$:Version$-w64-bin.zip`
* ArchivePath32Bit: `win32-build`
* ArchivePath64Bit: `win64-build`
* Dir: `bench\gnu`
* Path: `bin`
* Exe: `bin\gnutls-cli.exe`

### GnuPG

GnuPG is a complete and free implementation of the OpenPGP standard as defined by RFC4880 (also known as PGP).
GnuPG allows to encrypt and sign your data and communication, features a versatile key management system
as well as access modules for all kinds of public key directories.
GnuPG, also known as GPG, is a command line tool with features for easy integration with other applications.

* ID: `Bench.GnuPG`
* Tags:
    + pgp
    + cryptography
    + email
    + cli
* Website: <https://gnupg.org>
* License: GPL-3.0
* Docs:
    + Manual: <https://gnupg.org/documentation/manuals/gnupg-2.0/>
    + Commands: <https://gnupg.org/documentation/manuals/gnupg-2.0/Operational-GPG-Commands.html>
* Version: 2.2.6
* Url: `https://sourceforge.net/projects/portableapps/files/GPG Plugin Portable/$:ArchiveName$`
* ArchiveName: `GPG_Plugin_Portable_$:Version$.paf.exe`
* Dir: `bench\gpg`
* Path: `bin`
* Exe: `bin\gpg.exe`

### Putty

PuTTY is a free (MIT-licensed) Win32 Telnet and SSH client.

* ID: `Bench.Putty`
* Tags:
    + network
    + ssh
    + gui
* Website: <http://www.putty.org>
* License: MIT
* Docs:
    + User Manual: <http://the.earth.li/~sgtatham/putty/0.67/htmldoc/>
* Version: latest
* Url32Bit: <http://the.earth.li/~sgtatham/putty/latest/w32/putty.zip>
* Url64Bit: <http://the.earth.li/~sgtatham/putty/latest/w64/putty.zip>
* ArchiveName32Bit: `putty_w32.zip`
* ArchiveName64Bit: `putty_w64.zip`
* RegistryKeys: `Software\SimonTatham`
* Launcher: $:Label$

## Version Control

### GitKraken

The downright luxurious Git client, for Windows, Mac & Linux.

* ID: `Bench.GitKraken`
* Tags:
    + gui
* Version: latest
* Website: <https://www.gitkraken.com/>
* License: Freemium
* LicenseUrl: `LICENSE`
* Docs:
    + FAQ: <https://www.gitkraken.com/faq>
* Url32Bit: <https://release.gitkraken.com/win32/GitKrakenSetup.exe>
* Url64Bit: <https://release.gitkraken.com/win64/GitKrakenSetup.exe>
* ArchiveName32Bit: `GitKrakenSetup_w32.exe`
* ArchiveName64Bit: `GitKrakenSetup_w64.exe`
* ArchiveTyp: `custom`
* ArchivePath: `lib\net45`
* Launcher: $:Label$

## Languages and Platforms

### PHP 5

PHP is a popular general-purpose scripting language that is especially suited to web development.
Fast, flexible and pragmatic, PHP powers everything from your blog to the most popular websites in the world.

This application needs the
[Visual C++ Redistributable 2012 32Bit](http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU3/vcredist_x86.exe)
or the
[Visual C++ Redistributable 2012 64Bit](http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU3/vcredist_x64.exe)
installed.

* ID: `Bench.PHP5`
* Label: PHP 5
* Tags:
    + language
    + interpreter
    + web
    + cgi
    + cli
* Website: <http://www.php.net>
* License: BSD-Style
* LicenseUrl: <http://www.php.net/license/3_01.txt>
* Docs:
    + PHP Manual: <http://php.net/manual/en/>
* Version: 5.6.35
* Url: `https://windows.php.net/downloads/releases/archives/$:ArchiveName$`
* ArchiveName32Bit: `php-$:Version$-Win32-VC11-x86.zip`
* ArchiveName64Bit: `php-$:Version$-Win32-VC11-x64.zip`
* DownloadHeaders:
    + `User-Agent`: `Bench`
* Exe: `php.exe`
* Extensions: `php_curl`, `php_fileinfo`, `php_imap`, `php_mbstring`, `php_mysql`, `php_mysqli`, `php_openssl`, `php_pdo_mysql`, `php_pdo_pgsql`, `php_pdo_sqlite`, `php_pgsql`, `php_sqlite3`, `php_soap`

### PHP 7

PHP is a popular general-purpose scripting language that is especially suited to web development.
Fast, flexible and pragmatic, PHP powers everything from your blog to the most popular websites in the world.

This application needs the
[Visual C++ Redistributable 2017 32Bit](https://go.microsoft.com/fwlink/?LinkId=746571)
or the
[Visual C++ Redistributable 2017 64Bit](https://go.microsoft.com/fwlink/?LinkId=746572)
installed.

* ID: `Bench.PHP7`
* Label: PHP 7
* Tags:
    + language
    + interpreter
    + web
    + cgi
    + cli
* Website: <http://www.php.net>
* License: BSD-Style
* LicenseUrl: <http://www.php.net/license/3_01.txt>
* Docs:
    + PHP Manual: <http://php.net/manual/en/>
* Version: 7.2.4
* Url: `http://windows.php.net/downloads/releases/archives/$:ArchiveName$`
* ArchiveName32Bit: `php-$:Version$-Win32-VC15-x86.zip`
* ArchiveName64Bit: `php-$:Version$-Win32-VC15-x64.zip`
* DownloadHeaders:
    + `User-Agent`: `Bench`
* Exe: `php.exe`
* Extensions: `curl`, `fileinfo`, `imap`, `mbstring`, `mysqli`, `openssl`, `pdo_mysql`, `pdo_pgsql`, `pdo_sqlite`, `pgsql`, `sqlite3`, `soap`

### Java Runtime Environment 8

According to Oracle, Java is the world's #1 programming language.

The runtime environment is required for a compiled Java program to get executed.

* ID: `Bench.JRE8`
* Label: Java Runtime Environment 8
* Tags:
    + language
    + runtime
    + cli
    + jvm
* Website: <https://www.oracle.com/java/>
* License: OBCL
* LicenseUrl: <http://www.oracle.com/technetwork/java/javase/terms/license/index.html>
* Docs:
    + Downloads: <http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html>
* Version: 172
* Release: b11
* LinkUUID: a58eab1ec242421181065cdc37240b08
* Url: `http://download.oracle.com/otn-pub/java/jdk/8u$:Version$-$:Release$/$:LinkUUID$/$:ArchiveName$`
* DownloadCookies: `oraclelicense: accept-securebackup-cookie`
* ArchiveName32Bit: `jre-8u$:Version$-windows-i586.tar.gz`
* ArchiveName64Bit: `jre-8u$:Version$-windows-x64.tar.gz`
* ArchivePath: `jre1.8.0_$:Version$`
* Path: `bin`
* Exe: `bin\java.exe`
* Environment:
    + `JAVA_CMD`: `$:Exe$`

### Java Development Kit 8

According to Oracle, Java is the world's #1 programming language.

The development kit is required for Java source code to get compiled.

* ID: `Bench.JDK8`
* Label: Java Development Kit 8
* Tags:
    + cli
    + language
    + runtime
    + compiler
    + sdk
    + jvm
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
* ArchiveName32Bit: `jdk-8u$:Version$-windows-i586.exe`
* ArchiveName64Bit: `jdk-8u$:Version$-windows-x64.exe`
* Path: `bin`
* Exe: `bin\javac.exe`
* Environment:
    + `JAVA_HOME`: `$:Dir$`
    + `JAVA_CMD`: `$:Dir$\jre\bin\java.exe`

### JRE 8 Midi Soundbank

* ID: `Bench.JRE8.MidiSoundbank`
* Label: JRE 8 Midi Soundbank
* Tags:
    + java
    + resource
    + music
    + sound
* Dependencies: `Bench.JRE8`
* Website: <http://www.oracle.com/technetwork/java/soundbanks-135798.html>
* Url: <http://www.oracle.com/technetwork/java/soundbank-deluxe-150042.zip>
* ArchiveName: `java-midi-soundbank-deluxe.zip`
* Dir: `$Bench.JRE8:Dir$\lib\audio`
* SetupTestFile: `$:Dir$\soundbank-deluxe.gm`

### JDK 8 Midi Soundbank

* ID: `Bench.JDK8.MidiSoundbank`
* Label: JDK 8 Midi Soundbank
* Tags:
    + java
    + resource
    + music
    + sound
* Dependencies: `Bench.JDK8`
* Website: `$Bench.JRE8.MidiSoundbank:Website$`
* Url: `$Bench.JRE8.MidiSoundbank:Url$`
* ArchiveName: `$Bench.JRE8.MidiSoundbank:ArchiveName$`
* Dir: `$Bench.JDK8:Dir$\lib\audio`
* SetupTestFile: `$:Dir$\soundbank-deluxe.gm`

### Java Runtime Environment 10

According to Oracle, Java is the world's #1 programming language.

The runtime environment is required for a compiled Java program to get executed.

* ID: `Bench.JRE`
* Label: Java Runtime Environment 10
* Tags:
    + cli
    + language
    + runtime
    + jvm
* Website: <https://www.oracle.com/java/>
* License: OBCL
* LicenseUrl: <http://www.oracle.com/technetwork/java/javase/terms/license/index.html>
* Docs:
    + Downloads: <http://www.oracle.com/technetwork/java/javase/downloads/jre9-downloads-3848532.html>
* Version: 10.0.2
* Release: 13
* LinkUUID: 19aef61b38124481863b1413dce1855f
* Only64Bit: `true`
* Url64Bit: `http://download.oracle.com/otn-pub/java/jdk/$:Version$+$:Release$/$:LinkUUID$/$:ArchiveName$`
* DownloadCookies: `oraclelicense: accept-securebackup-cookie`
* ArchiveName64Bit: `jre-$:Version$_windows-x64_bin.tar.gz`
* ArchivePath: `jre-$:Version$`
* Path: `bin`
* Exe: `bin\java.exe`
* Environment:
    + `JAVA_CMD`: `$:Exe$`

### Java Development Kit 10

According to Oracle, Java is the world's #1 programming language.

The development kit is required for Java source code to get compiled.

* ID: `Bench.JDK`
* Label: Java Development Kit 10
* Tags:
    + cli
    + language
    + runtime
    + compiler
    + sdk
    + jvm
* Website: <https://www.oracle.com/java/>
* License: OBCL
* LicenseUrl: <http://www.oracle.com/technetwork/java/javase/terms/license/index.html>
* Docs:
    + Downloads: <http://www.oracle.com/technetwork/java/javase/downloads/index.html>
    + Documentation: <http://docs.oracle.com/javase/10/docs/>
    + Java SE 10 API: <http://docs.oracle.com/javase/10/docs/api/index.html>
* Version: $Bench.JRE:Version$
* Release: $Bench.JRE:Release$
* LinkUUID: $Bench.JRE:LinkUUID$
* Only64Bit: `true`
* Url64Bit: `http://download.oracle.com/otn-pub/java/jdk/$:Version$+$:Release$/$:LinkUUID$/$:ArchiveName$`
* DownloadCookies: `oraclelicense: accept-securebackup-cookie`
* ArchiveName64Bit: `jdk-$:Version$_windows-x64_bin.exe`
* Path: `bin`
* Exe: `bin\javac.exe`
* Environment:
    + `JAVA_HOME`: `$:Dir$`
    + `JAVA_CMD`: `$:Dir$\bin\java.exe`

### Leiningen

Leiningen is the easiest way to use Clojure.
With a focus on project automation and declarative configuration,
it gets out of your way and lets you focus on your code.

* ID: `Bench.Leiningen`
* Tags:
    + cli
    + clojure
    + java
    + scaffolding
    + project automation
* Dependencies: `Bench.JDK`, `Bench.GnuPG`, `Bench.cURL`
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
* Tags:
    + cli
    + clojure
    + scripting
* Website: <http://inlein.org>
* License: EPL-1.0
* LicenseUrl: <https://raw.githubusercontent.com/hyPiRion/inlein/master/LICENSE>
* Docs:
    + Getting Started: <https://github.com/hyPiRion/inlein/wiki/Getting-Started>
* Dependencies: `Bench.Leiningen`
* Version: 0.2.0
* Url: `https://github.com/hyPiRion/inlein/releases/download/$:Version$/inlein`
* ResourceName: `inlein.bat`
* Exe: `$:ResourceName$`
* Dir: `bench\lein`

### Boot Clojure

Build tooling for Clojure.

* ID: `Bench.BootClj`
* Label: Boot Clojure
* Tags:
    + clojure
    + scripting
    + project automation
    + cli
* Dependencies: `Bench.JDK`, `Bench.Maven`
* Website: <http://boot-clj.com>
* Docs:
    + Wiki: <https://github.com/boot-clj/boot/wiki>
* Version: latest
* Url: <https://github.com/boot-clj/boot-bin/releases/download/latest/boot.exe>
* ResourceName: `boot.exe`
* Exe: `boot.exe`

### ScriptCS

Write .Net apps with a text editor, NuGet, and the power of Roslyn!

* ID: `Bench.ScriptCS`
* Tags:
    + csharp
    + c#
    + scripting
    + language
    + cli
* Typ: `nuget-package`
* Website: <http://scriptcs.net/>
* License: Apache-2.0
* Version: latest
* Docs:
    + Wiki: <https://github.com/scriptcs/scriptcs/wiki>
* Exe: `$:Path$\scriptcs.exe`
* Launcher: $:Label$

### .NET Core SDK

The build tools and compilers for platform independent .NET Core applications.

* ID: `Bench.DotNetCore`
* Label: .NET Core SDK
* Tags:
    + cli
    + language
    + compiler
    + clr
    + csharp
    + c#
    + vb.net
    + visual basic
    + project automation
* Version: 2.1.200
* Website: <https://www.microsoft.com/net/core>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/dotnet/coreclr/master/LICENSE.TXT>
* Docs:
    + Docs: <https://docs.microsoft.com/dotnet/>
    + Getting Started: <https://docs.microsoft.com/dotnet/articles/core/index>
    + Welcome: <https://docs.microsoft.com/dotnet/articles/welcome>
    + API Reference: <https://docs.microsoft.com/dotnet/core/api/index>
* Url: `https://download.microsoft.com/download/3/7/1/37189942-C91D-46E9-907B-CF2B2DE584C7/$:ArchiveName$`
* ArchiveName32Bit: `dotnet-sdk-$:Version$-win-x86.zip`
* ArchiveName64Bit: `dotnet-sdk-$:Version$-win-x64.zip`
* Exe: `dotnet.exe`

### MinGW Get

The package manager for [MinGW](http://www.mingw.org/).

* ID: `Bench.MinGwGet`
* Tags:
    + cli
    + package manager
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
* Tags:
    + gui
    + package manager
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
* Tags:
    + gui
    + cli
    + msys
    + package manager
    + make
    + gcc
    + compiler
    + rsync
    + grep
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
* Tags:
    + cli
    + language
    + compiler
    + c
    + c++
    + objective c
    + objective c++
* Version: 6.0.0
* Website: <http://clang.llvm.org/>
* License: UoI-NCSA
* LicenseUrl: <https://opensource.org/licenses/UoI-NCSA.php>
* Url: `http://llvm.org/releases/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `LLVM-$:Version$-win32.exe`
* ArchiveName64Bit: `LLVM-$:Version$-win64.exe`
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
* Tags:
    + cli
    + language
    + compiler
    + golang
    + sdk
* Version: 1.10.2
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
* ArchiveName32Bit: `go$:Version$.windows-386.zip`
* ArchiveName64Bit: `go$:Version$.windows-amd64.zip`
* ArchivePath: `go`
* Path: `bin`
* Exe: `bin\go.exe`
* Environment:
    + `GOROOT`: `$:Dir$`

### Erlang

Erlang is a programming language used to build massively scalable soft real-time systems with requirements on high availability. Some of its uses are in telecoms, banking, e-commerce, computer telephony and instant messaging. Erlang's runtime system has built-in support for concurrency, distribution and fault tolerance.

* ID: `Bench.Erlang`
* Tags:
    + cli
    + language
    + compiler
    + erts
    + otp
    + sdk
* Website: <http://www.erlang.org/>
* License: Apache-2.0
* Docs:
    + Documentation: `$:Dir$\doc\index.html`
* VersionMajor: 20
* VersionMinor: 3
* ErtsVersion: 9.3
* Version: $:VersionMajor$.$:VersionMinor$
* Url: `http://erlang.org/download/$:ArchiveName$`
* ArchiveName32Bit: `otp_win32_$:Version$.exe`
* ArchiveName64Bit: `otp_win64_$:Version$.exe`
* ErtsDir: `erts-$:ErtsVersion$`
* Path: `$:ErtsDir$\bin`
* Exe: `$:ErtsDir$\bin\erl.exe`
* Environment: `ERLANG_HOME=$:ErtsDir$`
* Launcher: $:Label$
* LauncherExecutable: `$:ErtsDir$\bin\werl.exe`

### CoffeeScript

CoffeeScript is a little language that compiles into JavaScript.
Underneath that awkward Java-esque patina, JavaScript has always had a gorgeous heart.
CoffeeScript is an attempt to expose the good parts of JavaScript in a simple way.

* ID: `Bench.CoffeeScript`
* Tags:
    + cli
    + language
    + compiler
    + transpiler
    + javascript
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

### TypeScript

TypeScript is a language for application-scale JavaScript.
TypeScript adds optional types, classes, and modules to JavaScript.
TypeScript supports tools for large-scale JavaScript applications for any browser, for any host, on any OS.
TypeScript compiles to readable, standards-based JavaScript.

* ID: `Bench.TypeScript`
* Tags:
    + cli
    + language
    + compiler
    + transpiler
    + ts
    + javascript
* Typ: `node-package`
* Website: <http://www.typescriptlang.org/>
* License: Apache-2.0
* Docs:
    + Documentation: <http://www.typescriptlang.org/docs/home.html>
    + TypeScript in 5 minutes: <http://www.typescriptlang.org/docs/handbook/ts-in-5.html>
    + Quick Start Guides: <http://www.typescriptlang.org/samples/index.html>
* Version: latest
* Exe: `tsc.cmd`

### R

R is a free software for statistical computing and graphics.

* ID: `Bench.R`
* Tags:
    + cli
    + language
    + interpreter
    + statistics
    + science
    + plotting
* Website: <https://www.r-project.org>
* Version: 3.5.0
* Url: `http://cran.uni-muenster.de/bin/windows/base/old/$:Version$/$:ArchiveName$`
* ArchiveName: `R-$:Version$-win.exe`
* ArchiveTyp: `inno`
* Dir: `bench\r`
* Path32Bit: `bin\i386`
* Path64Bit: `bin\x64`
* Exe: `$:Path$\R.exe`
* Environment:
    + `R_HOME`: `$:Dir$`

### AutoHotKey

The ultimate automation scripting language for Windows.

* ID: `Bench.AutoHotkey`
* Tags:
    + cli
    + language
    + ahk
    + desktop
    + shortcut
    + keybinding
* Website: <https://autohotkey.com/>
* License: GPL-2.0
* LicenseUrl: license.txt
* Docs:
    + Documentation: <https://autohotkey.com/docs/AutoHotkey.htm>
* Version: 1.1.29.01
* Url: `https://github.com/Lexikos/AutoHotkey_L/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `AutoHotkey_$:Version$_setup.exe`
* Exe32Bit: `AutoHotkeyU32.exe`
* Exe64Bit: `AutoHotkeyU64.exe`
* Launcher: $:Label$

### Docker Toolbox

Docker provides a way to run applications securely isolated in a container,
packaged with all its dependencies and libraries.

**Warning:** This app does not install Virtual Box, as the Docker Toolbox Installer would.
To find this app useful, you probably have to manually install
[Hyper-V](https://docs.docker.com/machine/drivers/hyper-v/),
[VirtualBox](https://docs.docker.com/machine/drivers/virtualbox/),
or [VmWare Workstation](https://github.com/pecigonzalo/docker-machine-vmwareworkstation) on your PC.
For usage with VmWare Workstation activate the app _Docker Machine VmWare Workstation Driver_.

* ID: `Bench.DockerToolbox`
* Label: Docker Toolbox
* Tags:
    + cli
    + docker
    + package manager
    + container
    + virtualization
* Website: <https://www.docker.com/products/docker-toolbox>
* License: Mixed OS
* LicenseUrl: <https://www.docker.com/components-licenses>
* Docs:
    + Docker: <https://www.docker.com/>
    + Get Started: <https://docs.docker.com/get-started/>
    + User Guide: <https://docs.docker.com/engine/userguide/>
    + Docker CLI: <https://docs.docker.com/engine/reference/commandline/cli/>
    + Compose CLI: <https://docs.docker.com/compose/reference/overview/>
    + Machine CLI: <https://docs.docker.com/machine/reference/>
    + Docker File Reference: <https://docs.docker.com/engine/reference/builder/>
    + Compose File Reference: <https://docs.docker.com/compose/compose-file/>
* Version: 18.06.0
* Only64Bit: `true`
* Url64Bit: `https://github.com/docker/toolbox/releases/download/v$:Version$-ce/$:ArchiveName$`
* ArchiveName: `DockerToolbox-$:Version$-ce.exe`
* ArchiveTyp: `inno`
* Dir: `bench\docker`
* Exe: `docker.exe`

### Docker Machine VmWare Workstation Driver

This plugin for Docker Machine creates Docker hosts locally on a VMware Workstation.

* ID: `Bench.DockerMachineVmWareWorkstation`
* Label: Docker Machine VmWare Workstation Driver
* Tags:
    + docker
    + virtualization
    + vmware
* Dependencies: `Bench.DockerToolbox`
* Website: <https://github.com/pecigonzalo/docker-machine-vmwareworkstation>
* License: Apache-2.0
* Version: 1.1.0
* Only64Bit: `true`
* Url64Bit: `https://github.com/pecigonzalo/docker-machine-vmwareworkstation/releases/download/v$:Version$/$:ResourceName$`
* ResourceName: `docker-machine-driver-vmwareworkstation.exe`
* Dir: `$Bench.DockerToolbox:Dir$`
* Exe: `$:ResourceName$`

## Editors

### Notepad2

Notepad2 is a fast and light-weight Notepad-like text editor with syntax highlighting.
This program can be run out of the box without installation, and does not touch your system's registry.

* ID: `Bench.Notepad2`
* Tags:
    + gui
    + editor
    + text editor
* Website: <http://www.flos-freeware.ch/notepad2.html>
* License: BSD-3-Clause
* LicenseUrl: `License.txt`
* Docs:
    + Readme: <http://www.flos-freeware.ch/doc/Notepad2.txt>
    + FAQ: <http://www.flos-freeware.ch/doc/notepad2-FAQs.html>
    + Encoding Tutorial: <http://www.flos-freeware.ch/doc/notepad2-Encoding.html>
* Version: 4.2.25
* Url: `http://www.flos-freeware.ch/zip/$:ArchiveName$`
* ArchiveName32Bit: `notepad2_$:Version$_x86.zip`
* ArchiveName64Bit: `notepad2_$:Version$_x64.zip`
* Register: `false`
* Launcher: $:Label$

### Notepad++

Notepad++ is a free (as in "free speech" and also as in "free beer") source code editor and Notepad replacement that supports several languages. Running in the MS Windows environment, its use is governed by GPL License.

* ID: `Bench.NotepadPlusPlus`
* Tags:
    + gui
    + editor
    + text editor
* Website: <https://notepad-plus-plus.org>
* License: GPL-3.0
* LicenseUrl: <https://www.gnu.org/copyleft/gpl.html>
* Docs:
    + Features: <https://notepad-plus-plus.org/features/>
    + Community: <https://notepad-plus-plus.org/community/>
    + Wiki: <http://docs.notepad-plus-plus.org>
* Label: Notepad++
* MajorVersion: 7
* Version: `$:MajorVersion$.5.8`
* Url: `https://notepad-plus-plus.org/repository/$:MajorVersion$.x/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `npp.$:Version$.bin.7z`
* ArchiveName64Bit: `npp.$:Version$.bin.x64.7z`
* Exe: `notepad++.exe`
* Launcher: $:Label$
* ConfigurationDir: `$AppDataDir$\Notepad++`

### Markdown Edit

Markdown Edit (MDE) is low distraction editor for Windows. MDE focuses on producing text documents that can be transformed into Web pages and documents. It places an emphasis on content and keyboard shortcuts. Don't let this dissuade you. Markdown Edit is a power-house of an editor. It does its job quietly and without fanfare.

* ID: `Bench.MarkdownEdit`
* Label: Markdown Edit
* Tags:
    + gui
    + editor
    + markdown
* Website: <http://markdownedit.com/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/mike-ward/Markdown-Edit/master/LICENSE.txt>
* Docs:
    + Documentation: <https://github.com/mike-ward/Markdown-Edit/wiki/01.-Home>
    + Keyboard Shortcuts: <https://github.com/mike-ward/Markdown-Edit/wiki/05.-Keyboard-Shortcuts>
* Version: 1.33
* Url: `https://github.com/mike-ward/Markdown-Edit/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `MarkdownEdit.zip`
* Exe: `mde.exe`
* Register: `false`
* Launcher: $:Label$

### Atom

A hackable text editor for the 21st Century.

_Hint: Install the `env-from-shell` package to make sure the Bench environment
is picked up from Atom._

* ID: `Bench.Atom`
* Tags:
    + gui
    + editor
    + ide
    + package manager
    + coffeescript
    + text editor
    + folder editor
* Website: <https://atom.io>
* License: MIT
* LicenseUrl: <https://github.com/atom/atom/blob/master/LICENSE.md>
* Docs:
    + Packages: <https://atom.io/packages>
    + Themes: <https://atom.io/themes>
    + Flight Manual: <http://flight-manual.atom.io/>
    + API Reference: `https://atom.io/docs/api/v$:Version$/AtomEnvironment`
* Version: 1.29.0
* Url32Bit: `https://github.com/atom/atom/releases/download/v$:Version$/atom-windows.zip`
* Url64Bit: `https://github.com/atom/atom/releases/download/v$:Version$/atom-x64-windows.zip`
* ArchiveName32Bit: `atom-windows-$:Version$.zip`
* ArchiveName64Bit: `atom-x64-windows-$:Version$.zip`
* ArchivePath32Bit: `Atom`
* ArchivePath64Bit: `Atom x64`
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
* Tags:
    + gui
    + editor
    + ide
    + package manager
    + typescript
    + text editor
    + folder editor
* Website: <https://code.visualstudio.com/>
* License: MS-L
* LicenseUrl: <https://code.visualstudio.com/License/>
* Docs:
    + Documentation: <https://code.visualstudio.com/Docs>
* Version: latest
* Url32Bit: <http://go.microsoft.com/fwlink/?LinkID=623231>
* Url64Bit: <https://go.microsoft.com/fwlink/?linkid=850641>
* ArchiveName32Bit: `VSCode-win32-ia32.zip`
* ArchiveName64Bit: `VSCode-win32-x64.zip`
* Dir: `bench\code`
* Exe: `code.exe`
* Launcher: $:Label$

### Sublime Text 3

Sublime Text is a sophisticated text editor for code, markup and prose.
You'll love the slick user interface, extraordinary features and amazing performance.

* ID: `Bench.SublimeText3`
* Label: Sublime Text 3
* Tags:
    + gui
    + editor
    + ide
    + python
    + text editor
    + folder editor
* Website: <http://www.sublimetext.com>
* License: Commercial
* Docs:
    + Documentation: <https://www.sublimetext.com/docs/3/>
    + Unofficial Documentation: <http://docs.sublimetext.info/en/latest/index.html>
    + Package Control: <https://packagecontrol.io/>
* Version: Build 3176
* Url: `https://download.sublimetext.com/$:ArchiveName$`
* ArchiveName32Bit: `Sublime Text $:Version$.zip`
* ArchiveName64Bit: `Sublime Text $:Version$ x64.zip`
* Exe: `sublime_text.exe`
* Launcher: $:Label$
* DataDir: `$AppDataDir$\Sublime Text 3`

### Sublime Text 3 Package Control

* ID: Bench.SublimeText3.PackageControl
* Tags:
    + package manager
    + python
* Dependencies: `Bench.SublimeText3`
* Label: Sublime Text 3 Package Control
* Website: <https://packagecontrol.io>
* Url: <https://packagecontrol.io/Package%20Control.sublime-package>
* ResourceName: `Package Control.sublime-package`
* Dir: `$Bench.SublimeText3:DataDir$\Installed Packages`
* Register: false
* SetupTestFile: `$:Dir$\$:ResourceName$`
* Packages:
    + `SideBarEnhancements`
    + `Console Exec`
    + `AutoFileName`
    + `BracketHighlighter`
    + `TrailingSpaces`
    + `INI`
    + `AutoHotkey`
    + `TOML`
    + `LESS`
    + `PowerShell`
    + `MarkdownEditing`
    + `Emmet`
    + `Dockerfile Syntax Highlighting`
    + `SublimeLinter`
    + `SublimeLinter-pycodestyle`
    + `SublimeLinter-jshint`
    + `Git`
    + `Gist`
    + `Gulp`

### Emacs

An extensible, customizable, free text editor - and more.

GNU Emacs at its core is an interpreter for Emacs Lisp, a dialect of the Lisp programming language
with extensions to support text editing.

* ID: `Bench.Emacs`
* Tags:
    + gui
    + cli
    + editor
    + ide
    + interpreter
    + language
    + lisp
    + common lisp
    + package manager
    + text editor
    + folder editor
* Dependencies: `Bench.GnuTLS`
* Website: <https://www.gnu.org/software/emacs/>
* License: GPL-3.0
* Docs:
    + Manual: <https://www.gnu.org/software/emacs/manual/html_node/emacs/index.html>
    + Emacs Lisp: <https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html>
    + Other Manuals: <https://www.gnu.org/software/emacs/manual/index.html>
* MajorVersion: 26
* Version: $:MajorVersion$.1
* Url: `http://ftp.gnu.org/gnu/emacs/windows/emacs-$:MajorVersion$/$:ArchiveName$`
* ArchiveName32Bit: `emacs-$:Version$-i686.zip`
* ArchiveName64Bit: `emacs-$:Version$-x86_64.zip`
* Dir: `bench\gnu`
* Path: `bin`
* Exe: `bin\emacs.exe`
* Launcher: $:Label$
* LauncherExecutable: `$:Dir$\bin\runemacs.exe`

### Spacemacs

The best editor is neither Emacs nor Vim, it's Emacs and Vim!

* ID: `Bench.Spacemacs`
* Tags:
    + gui
    + cli
    + editor
    + ide
    + emacs
    + keybinding
    + shortcut
    + text editor
    + folder editor
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
* Tags:
    + vim
    + runtime
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
* Tags:
    + cli
    + editor
    + ide
    + vim
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
* Tags:
    + gui
    + editor
    + ide
    + text editor
    + folder editor
* Website: <http://www.vim.org>
* License: GPL compatible
* LicenseUrl: <http://vimdoc.sourceforge.net/htmldoc/uganda.html#license>
* Docs:
    + Overview: <http://www.vim.org/docs.php>
    + Vimdoc: <http://vimdoc.sourceforge.net/>
    + User Manual: <http://vimdoc.sourceforge.net/htmldoc/usr_toc.html>
* Dependencies: `Bench.VimRT`, `Bench.VimConsole`
* VersionMajor: 8
* VersionMinor: 1
* Version: $:VersionMajor$.$:VersionMinor$
* Release: $:VersionMajor$$:VersionMinor$
* Url: `http://ftp.vim.org/pub/vim/pc/$:ArchiveName$`
* ArchiveName: `gvim$:Release$.zip`
* ArchivePath: `vim\vim$:Release$`
* Exe: `gvim.exe`
* Launcher: $:Label$

### Spyder

The Scientific PYthon Development EnviRonment

* ID: `Bench.Python3.Spyder`
* Label: Spyder 3
* Tags:
    + gui
    + editor
    + ide
    + python
* Website: <https://github.com/spyder-ide/spyder>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/spyder-ide/spyder/master/LICENSE>
* Typ: `python3-package`
* Exe: `$:Path$\spyder3.exe`
* Dependencies:
    + `Bench.Python3.IPython`
    + `Bench.Python3.Jupyter`
    + `Bench.Python.PyCodeStyle`
    + `Bench.Python.Tornado`
* Launcher: $:Label$
* LauncherIcon: `$:Dir$\Lib\site-packages\spyder\doc\_static\favicon.ico`

### LightTable

The next generation code editor.

* ID: `Bench.LightTable`
* Tags:
    + gui
    + editor
    + ide
    + clojure
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
* Tags:
    + gui
    + editor
    + ide
    + clojure
* Dependencies: `Bench.JDK`
* Website: <https://sekao.net/nightcode/>
* License: Public Domain
* LicenseUrl: <https://raw.githubusercontent.com/oakes/Nightcode/master/UNLICENSE>
* Version: 2.6.0
* Url: `https://github.com/oakes/Nightcode/releases/download/$:Version$/$:ResourceName$`
* ResourceName: `Nightcode-$:Version$.jar`
* Exe: `$:ResourceName$`
* Launcher: $:Label$
* LauncherExecutable: `$Bench.JDK:Path$\javaw.exe`
* LauncherArguments: `-jar`, `$:Exe$`

### Eclipse for Java

The essential tools for any Java developer, including a Java IDE, a Git client,
XML Editor, Mylyn, Maven and Gradle integration...

* ID: `Bench.EclipseJava`
* Label: Eclipse for Java
* Tags:
    + gui
    + ide
    + java
    + maven
    + ant
* CodeName: photon
* Release: R
* Version: 4.8.$:Release$
* Dependencies: `Bench.JDK`
* Website: <http://www.eclipse.org/>
* License: EFSUA
* LicenseUrl: <http://www.eclipse.org/legal/epl/notice.php>
* Url: `http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/$:CodeName$/$:Release$/$:ArchiveName$`
* ArchiveName32Bit: `eclipse-java-$:CodeName$-$:Release$-win32.zip`
* ArchiveName64Bit: `eclipse-java-$:CodeName$-$:Release$-win32-x86_64.zip`
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
* Tags:
    + gui
    + ide
    + php
* Version: $Bench.EclipseJava:Version$
* CodeName: $Bench.EclipseJava:CodeName$
* Release: $Bench.EclipseJava:Release$
* Dependencies: `Bench.JRE8`
* Website: <http://www.eclipse.org/>
* License: EFSUA
* LicenseUrl: <http://www.eclipse.org/legal/epl/notice.php>
* Url: `http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/$:CodeName$/$:Release$/$:ArchiveName$`
* ArchiveName32Bit: `eclipse-php-$:CodeName$-$:Release$-win32.zip`
* ArchiveName64Bit: `eclipse-php-$:CodeName$-$:Release$-win32-x86_64.zip`
* ArchivePath: `eclipse`
* Dir: `bench\eclipse_php`
* Exe: `eclipse.exe`
* Register: `false`
* Launcher: $:Label$

### Eclipse for C/C++

An IDE for C/C++ developers with Mylyn integration.

* ID: `Bench.EclipseCpp`
* Label: Eclipse for C++
* Tags:
    + gui
    + ide
    + c
    + c++
* Version: $Bench.EclipseJava:Version$
* CodeName: $Bench.EclipseJava:CodeName$
* Release: $Bench.EclipseJava:Release$
* Dependencies: `Bench.JRE8`
* Website: <http://www.eclipse.org/>
* License: EFSUA
* LicenseUrl: <http://www.eclipse.org/legal/epl/notice.php>
* Url: `http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/$:CodeName$/$:Release$/$:ArchiveName$`
* ArchiveName32Bit: `eclipse-cpp-$:CodeName$-$:Release$-win32.zip`
* ArchiveName64Bit: `eclipse-cpp-$:CodeName$-$:Release$-win32-x86_64.zip`
* ArchivePath: `eclipse`
* Dir: `bench\eclipse_cpp`
* Exe: `eclipse.exe`
* Register: `false`
* Launcher: $:Label$

### JetBrains IntelliJ IDEA Community

Capable and Ergonomic IDE for JVM.

* ID: `Bench.IdeaIC`
* Label: IntelliJ IDEA Community
* Tags:
    + gui
    + ide
    + java
    + compiler
    + language
    + kotlin
    + groovy
    + scala
    + maven
    + gradle
* Website: <https://www.jetbrains.com/idea/>
* Docs:
    + Documentation: <https://www.jetbrains.com/idea/documentation/>
* License: Apache-2.0
* Version: 2018.2.1
* Url: `https://download.jetbrains.com/idea/$:ArchiveName$`
* ArchiveName: `ideaIC-$:Version$.win.zip`
* Dir: `bench\idea_community`
* Exe32Bit: `bin\idea.exe`
* Exe64Bit: `bin\idea64.exe`
* Launcher: $:Label$

### JetBrains PyCharm Community

Python IDE for Professional Developers.

* ID: `Bench.PyCharmCE`
* Label: PyCharm Community
* Tags:
    + gui
    + ide
    + python
    + science
* Website: <https://www.jetbrains.com/pycharm/>
* Docs:
    + Documentation: <https://www.jetbrains.com/pycharm/documentation/>
* License: Apache-2.0
* Version: 2018.2.1
* Url: `https://download.jetbrains.com/python/$:ArchiveName$`
* ArchiveName: `pycharm-community-$:Version$.zip`
* Dir: `bench\pycharm_community`
* Exe32Bit: `bin\pycharm.exe`
* Exe64Bit: `bin\pycharm64.exe`
* Launcher: $:Label$

### R Studio

RStudio is an IDE for R.
It includes a console, syntax-highlighting editor that supports
direct code execution, as well as tools for plotting, history,
debugging and workspace management.

* ID: `Bench.RStudio`
* Label: R Studio
* Tags:
    + gui
    + ide
    + r
    + science
    + statistics
    + plotting
* Dependencies: `Bench.R`
* Website: <https://www.rstudio.com>
* License: AGPL-3.0
* Version: 1.1.456
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
* Tags:
    + gui
    + editor
* Version: latest
* Website: <http://angusj.com/resourcehacker/>
* License: Freeware
* Url: `http://angusj.com/resourcehacker/$:ArchiveName$`
* ArchiveName: `resource_hacker.zip`
* Dir: `bench\reshack`
* Launcher: $:Label$

## Software Development Utilities

### Yarn

Fast, reliable, and secure dependency management.
(alternative for _npm_)

* ID: `Bench.Yarn`
* Tags:
    + cli
    + package manager
    + npm
    + node
* Typ: `node-package`
* Website: <https://yarnpkg.com/>
* Docs:
    + Documentation: <https://yarnpkg.com/en/docs>
* License: BSD-2-Clause
* Version: latest
* Exe: `yarn.cmd`

### Gulp

The streaming build system.

* ID: `Bench.Gulp`
* Tags:
    + cli
    + project automation
    + javascript
* Typ: `node-package`
* Website: <http://gulpjs.com>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/gulpjs/gulp/master/LICENSE>
* Docs:
    + npm Package: <https://www.npmjs.com/package/gulp>
    + Getting Started: <https://github.com/gulpjs/gulp/blob/master/docs/getting-started.md>
    + API: <https://github.com/gulpjs/gulp/blob/master/docs/API.md>
    + Command-Line: <https://github.com/gulpjs/gulp/blob/master/docs/CLI.md>
    + Unofficial Documentation: <http://gulpjs.org/>
* Version: `>=4.0.0 <5.0.0`
* Exe: `gulp.cmd`

### Grunt

The JavaScript Task Runner

* ID: `Bench.Grunt`
* Tags:
    + cli
    + project automation
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
* Tags:
    + cli
    + package manager
    + web
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

### Composer

Dependency Manager for PHP

* ID: `Bench.Composer`
* Label: Composer
* Tags:
    + cli
    + php
    + package manager
* Typ: `meta`
* Dependencies: `Bench.Wget`, `Bench.PHP7`
* Website: <https://getcomposer.org/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/composer/composer/master/LICENSE>
* Docs:
    + Documentation: <https://getcomposer.org/doc/>
    + Packages: <https://packagist.org/>
* Dir: `bench\composer`
* Exe: `composer.bat`
* SetupCheckFile: `composer.phar`
* Register: `true`

### Yeoman

The web's scaffolding tool for modern webapps.

Yeoman helps you to kickstart new projects, prescribing best practices and tools
to help you stay productive.

* ID: `Bench.Yeoman`
* Tags:
    + cli
    + scaffolding
    + javascript
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
* Version: `>=2.0.0 <3.0.0`
* Exe: `yo.cmd`

### Plop

Micro-generator framework that makes it easy for an entire team to create files with a level of uniformity.

* ID: `Bench.Plop`
* Tags:
    + cli
    + scaffolding
    + javascript
* Typ: `node-package`
* Website: <https://plopjs.com/>
* Docs:
    + Documentation: <https://plopjs.com/documentation/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/amwmedia/plop/master/LICENSE>
* Version: latest
* Exe: `plop.cmd`

### Angular CLI

HTML is great for declaring static documents, but it falters when we try to use it for declaring dynamic views in web-applications. AngularJS lets you extend HTML vocabulary for your application. The resulting environment is extraordinarily expressive, readable, and quick to develop.

* ID: `Bench.AngularCli`
* Tags:
    + cli
    + scaffolding
    + project automation
    + typescript
    + web
* Typ: `node-package`
* PackageName: `@angular/cli`
* Website: <https://cli.angular.io/>
* Docs:
    + Angular: <https://angular.io/>
    + Angular Docs: <https://angular.io/docs/ts/latest/>
    + Angular CLI Quickstart: <https://angular.io/docs/ts/latest/cli-quickstart.html>
    + Angular CLI Wiki: <https://github.com/angular/angular-cli/wiki>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/angular/angular-cli/master/LICENSE>
* Label: Angular CLI

### PhantomJS

Full web stack &ndash; No browser required

PhantomJS is a headless WebKit scriptable with a JavaScript API.
It has **fast** and **native** support for various web standards:
DOM handling, CSS selector, JSON, Canvas, and SVG.

* ID: `Bench.PhantomJS`
* Tags:
    + cli
    + browser
    + web
* Website: <http://phantomjs.org/>
* Docs:
    + Documentation: <http://phantomjs.org/documentation/>
    + API: <http://phantomjs.org/api/>
    + Examples: <http://phantomjs.org/examples/>
    + FAQ: <http://phantomjs.org/faq.html>
* License: BSD-3-Clause
* Version: 2.1.1
* Url: `https://bitbucket.org/ariya/phantomjs/downloads/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath: `phantomjs-$:Version$-windows`
* Path: `bin`
* Exe: `$:Path$\phantomjs.exe`
* Launcher: $:Label$

### Django

_The web framework for perfectionists with deadlines._

Django is a high-level Python Web framework that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of Web development, so you can focus on writing your app without needing to reinvent the wheel. It’s free and open source.

* ID: `Bench.Django`
* Tags:
    + cli
    + scaffolding
    + project automation
    + python
    + web
* Typ: `python3-package`
* Website: <https://www.djangoproject.com>
* Docs:
    + Documentation: <https://docs.djangoproject.com/en/2.0/>
* License: BSD-3-Clause
* Version: latest
* Exe: `$:Dir$\django-admin.exe`

### Maven

Apache Maven is a software project management and comprehension tool.
Based on the concept of a project object model (POM), Maven can manage a project's build,
reporting and documentation from a central piece of information.

* ID: `Bench.Maven`
* Tags:
    + cli
    + java
    + package manager
    + project automation
* Dependencies: `Bench.JDK`, `Bench.GnuPG`
* Website: <https://maven.apache.org>
* License: Apache-2.0
* Docs:
    + Reference: `https://maven.apache.org/ref/$:Version$/`
    + API Docs: `https://maven.apache.org/ref/$:Version$/apidocs/index.html`
* Version: `3.5.3`
* Url: `http://www-eu.apache.org/dist/maven/maven-3/$:Version$/binaries/$:ArchiveName$`
* ArchiveName: `apache-maven-$:Version$-bin.zip`
* ArchivePath: `apache-maven-$:Version$`
* Dir: `bench\mvn`
* Path: `bin`
* Exe: `bin\mvn.cmd`

### Gradle

From mobile apps to microservices, from small startups to big enterprises, Gradle helps teams build, automate and deliver better software, faster.

**WARNING:**
Gradle is writing to the `.gradle` folder in the Windows user profile directory and the setup creates a `gradle.properties` file for the proxy configuration if not already present.

* ID: `Bench.Gradle`
* Tags:
    + cli
    + project automation
* Website: <https://gradle.org/>
* Dependencies: `Bench.JDK`
* License: Apache-2.0
* Docs:
    + Documentation: <https://gradle.org/docs>
* Version: 4.7
* Url: `https://services.gradle.org/distributions/$:ArchiveName$`
* ArchiveName: `gradle-$:Version$-bin.zip`
* ArchivePath: `gradle-$:Version$`
* Path: `bin`
* Exe: `bin\gradle.bat`

### NUnit 3 Runner

NUnit is a unit-testing framework for all .Net languages.
The console runner `nunit3-console.exe` executes tests on the console.

* ID: `Bench.NUnitRunners`
* Label: NUnit 3 Runners
* Tags:
    + gui
    + clr
    + testing
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
* Tags:
    + cli
    + project automation
    + c
    + c++
* Website: <https://cmake.org/>
* License: BSD-3-Clause
* LicenseUrl: <https://gitlab.kitware.com/cmake/cmake/raw/master/Copyright.txt>
* MajorVersion: 3.12
* Version: $:MajorVersion$.1
* Url: `https://cmake.org/files/v$:MajorVersion$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath32Bit: `cmake-$:Version$-win32-x86`
* ArchivePath64Bit: `cmake-$:Version$-win64-x64`
* Path: `bin`
* Exe: `bin\cmake.exe`

### JSLint

JSLint is a JavaScript program that looks for problems in JavaScript programs.
Is is a code quality tool.

* ID: `Bench.JSLint`
* Tags:
    + cli
    + javascript
    + linter
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
* Tags:
    + cli
    + javascript
    + linter
* Typ: `node-package`
* Website: <http://jshint.com/>
* License: MIT
* LicenseUrl: <https://www.gnu.org/licenses/license-list.html#Expat>
* Docs:
    + npm Package: <https://www.npmjs.com/package/jshint>
    + Documentation: <http://jshint.com/docs/>
    + Command-Line: <http://jshint.com/docs/cli/>
    + API: <http://jshint.com/docs/api/>
* Exe: `jshint.cmd`

### JSBeautify

This little beautifier will reformat and reindent bookmarklets, ugly JavaScript,
unpack scripts packed by Dean Edward’s popular packer,
as well as deobfuscate scripts processed by <http://javascriptobfuscator.com/>.

* ID: `Bench.JSBeautify`
* Tags:
    + cli
    + javascript
    + json
    + html
    + web
    + formatting
* Typ: `node-package`
* PackageName: `js-beautify`
* Website: <http://jsbeautifier.org/>
* License: MIT
* Exe: `js-beautify.cmd`

Supported commands: `js-beautify`, `css-beautify`, `html-beautify`

### Mocha

Mocha is a feature-rich JavaScript test framework running on Node.js
and in the browser, making asynchronous testing simple and fun.
Mocha tests run serially, allowing for flexible and accurate reporting,
while mapping uncaught exceptions to the correct test cases.

* ID: `Bench.Mocha`
* Tags:
    + cli
    + testing
    + javascript
* Typ: `node-package`
* Website: <http://mochajs.org/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/mochajs/mocha/master/LICENSE>
* Version: latest
* Docs:
    + Getting Started: <http://mochajs.org/#getting-started>
    + CLI: <http://mochajs.org/#usage>

### Tern

Tern is a stand-alone, editor-independent JavaScript analyzer
that can be used to improve the JavaScript integration of existing editors.

* ID: `Bench.Tern`
* Tags:
    + parser
    + javascript
* Typ: `node-package`
* Website: <https://github.com/ternjs/tern>
* License: MIT
* Version: `>=0.20.0 <=1.0.0`

### Pipenv

Pipenv -- the officially recommended Python packaging tool from Python.org, free (as in freedom).

Pipenv is a tool that aims to bring the best of all packaging worlds (bundler, composer, npm, cargo, yarn, etc.) to the Python world. Windows is a first-class citizen, in our world.

* ID: `Bench.Pipenv`
* Tags:
    + cli
    + package manager
    + python
* Typ: `python-package`
* Website: <https://pipenv.org>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/pypa/pipenv/master/LICENSE>

### PyReadline

Required for colors in IPython.

* ID: `Bench.Python.PyReadline`
* Label: PyReadline
* PackageName: `pyreadline`
* Typ: `python-package`
* Website: <https://pypi.python.org/pypi/pyreadline>
* License: BSD-3-Clause

### IPython for Python 2

IPython provides a rich architecture for computing with a powerful interactive shell.

* ID: `Bench.Python2.IPython`
* Label: IPython (Python 2)
* Tags:
    + cli
    + repl
    + interactive
    + shell
    + python
* Typ: `python2-package`
* PackageName: `ipython`
* Dependencies: `Bench.Python.PyReadline`
* Website: <https://ipython.org/>
* License: BSD-3-Clause
* LicenseUrl: <http://ipython.readthedocs.io/en/stable/about/license_and_copyright.html>
* Docs:
    + Documentation: <http://ipython.readthedocs.io/en/stable/>
* Exe: `Scripts\ipython2.exe`
* Launcher: IPython 2

### IPython for Python 3

IPython provides a rich architecture for computing with a powerful interactive shell.

* ID: `Bench.Python3.IPython`
* Label: IPython (Python 3)
* Tags:
    + cli
    + repl
    + interactive
    + shell
    + python
* Typ: `python3-package`
* PackageName: `ipython`
* Dependencies: `Bench.Python.PyReadline`
* Website: <https://ipython.org/>
* License: BSD-3-Clause
* LicenseUrl: <http://ipython.readthedocs.io/en/stable/about/license_and_copyright.html>
* Docs:
    + Documentation: <http://ipython.readthedocs.io/en/stable/>
* Exe: `Scripts\ipython3.exe`
* Launcher: IPython 3

### PEP 8

**SUPERSEEDED** by _pycodestyle_

pep8 is a tool to check your Python code against some of the style conventions in PEP 8.

* ID: `Bench.Python.PEP8`
* Label: PEP8
* Typ: `python-package`
* Website: <https://pypi.python.org/pypi/pep8>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/PyCQA/pycodestyle/master/LICENSE>
* Docs:
    + PEP 8 Styleguide: <https://www.python.org/dev/peps/pep-0008/>
* Exe: `Scripts\pep8.exe`

### pycodestyle

pycodestyle (formerly called pep8) - Python style guide checker

* ID: `Bench.Python.PyCodeStyle`
* Tags:
    + cli
    + linter
    + python
* Typ: `python-package`
* Website: <https://pypi.python.org/pypi/pycodestyle>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/PyCQA/pycodestyle/master/LICENSE>
* Docs:
    + pycodestyle documentation: <http://pycodestyle.pycqa.org/>
    + PEP 8 Styleguide: <https://www.python.org/dev/peps/pep-0008/>
* Exe: `Scripts\pycodestyle.exe`

### Zeal

An offline documentation browser inspired by [Dash](https://kapeli.com/dash/).

* ID: `Bench.Zeal`
* Label: Zeal Docs
* Tags:
    + docs
    + documentation
    + offline
* Website: <https://zealdocs.org>
* License: GPL-3.0
* Version32Bit: 0.3.1
* Version64Bit: 0.5.0
* Url: `https://bintray.com/artifact/download/zealdocs/windows/$:ArchiveName$`
* ArchiveName32Bit: `zeal-$:Version$-windows-x86.msi`
* ArchiveName64Bit: `zeal-$:Version$-windows-x64.msi`
* ArchivePath32Bit: `SourceDir\PFiles\Zeal`
* ArchivePath64Bit: `SourceDir\Zeal`
* RegistryKeys: `Software\Zeal`
* Launcher: $:Label$
* Register: `false`

### SQLite Browser

DB Browser for SQLite is a high quality, visual, open source tool to create,
design, and edit database files compatible with SQLite.

It is for users and developers wanting to create databases, search, and edit data.
It uses a familiar spreadsheet-like interface, and you don't need to learn
complicated SQL commands.

* ID: `Bench.SQLiteBrowser`
* Label: DB Browser for SQLite
* Tags:
    + gui
    + sql
    + sqlite
* Website: <http://sqlitebrowser.org/>
* Docs:
    + Wiki: <https://github.com/sqlitebrowser/sqlitebrowser/wiki>
* License: GPL-3.0
* Version: 3.10.1
* Url: `https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `DB.Browser.for.SQLite-$:Version$-win32.exe`
* ArchiveName64Bit: `DB.Browser.for.SQLite-$:Version$-win64.exe`
* Exe: `DB Browser for SQLite.exe`
* Launcher: $:Label$

### Windows Sysinternals Suite

A collection of tools by Mark Russinovich, to inspect and investigate
the Microsoft Windows operating systems and its processes.

* ID: `Bench.SysInternals`
* Tags:
    + gui
    + cli
    + bginfo
    + dbgview
    + autoruns
    + disk2vhd
    + diskmon
    + notmyfault
    + portmon
    + procexp
    + procmon
    + rootkitrevealer
    + tcpview
    + vmmap
    + winobj
    + zoomit
    + pstools
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

## Mobile Development

### Apache Cordova

Mobile apps with HTML, CSS & JS  
Target multiple platforms with one code base  
Free and open source

* ID: `Bench.Cordova`
* Tags:
    + cli
    + mobile
    + sdk
* Typ: `node-package`
* Website: <https://cordova.apache.org/>
* Docs:
    + Documentation: <https://cordova.apache.org/docs/en/latest/>
    + CLI Reference: <https://cordova.apache.org/docs/en/latest/reference/cordova-cli/index.html>
* License: Apache-2.0

### Ionic

The top open source framework for building amazing mobile apps.

Ionic is the beautiful, free and open source mobile SDK for developing native and progressive web apps with ease.

* ID: `Bench.Ionic`
* Tags:
    + cli
    + mobile
    + sdk
* Typ: `node-package`
* Dependencies: `Bench.Cordova`
* Website: <http://ionicframework.com/>
* Docs:
    + Documentation: <http://ionicframework.com/docs/>
    + Components: <http://ionicframework.com/docs/v2/components/>
    + API: <http://ionicframework.com/docs/v2/api/>
    + CLI: <http://ionicframework.com/docs/v2/cli/>
    + FAQ: <http://ionicframework.com/docs/v2/troubleshooting/>
    + Forum: <https://forum.ionicframework.com/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/driftyco/ionic/master/LICENSE>

### Android SDK

Android SDK includes the complete set of development and debugging tools for Android.

**WARNING:**
The Android SDK will write into the home directory of your Windows user profile.
It will create the directory `.android` and will store the AVDs there,
which can reach a considerable size.

**WARNING:**
The setup script for Android SDK can _not_ be run unattended, because it requires user interaction to accept the license agreements.

**WARNING:**
The setup script includes the installation of the Intel _Hardware Accelerated eXecution Manager_, which requires admin privileges for installation and is not contained by the Bench isolation.

* ID: `Bench.AndroidSDK`
* Label: Android SDK
* Tags:
    + cli
    + mobile
    + sdk
    + android
* Dependencies: `Bench.JRE8`
* Website: <https://developer.android.com/studio/command-line/>
* License: Proprietary
* LicenseUrl: <https://developer.android.com/studio/terms.html>
* Docs:
    + SDK Manager: <https://developer.android.com/studio/command-line/sdkmanager.html>
    + AVD Manager: <https://developer.android.com/studio/command-line/avdmanager.html>
    + JOBB: <https://developer.android.com/studio/command-line/jobb.html>
    + Lint: <https://developer.android.com/studio/write/lint.html>
    + Monkeyrunner: <https://developer.android.com/studio/test/monkeyrunner/index.html>
    + Emulator: <https://developer.android.com/studio/run/emulator-commandline.html>
    + API Guides: <https://developer.android.com/guide/index.html>
    + Package Index: <https://developer.android.com/reference/packages.html>
* Version: 3859397
* BuildToolsVersion: 25.0.3
* PlatformVersion: 25
* Url: `https://dl.google.com/android/repository/$:ArchiveName$`
* ArchiveName: `sdk-tools-windows-$:Version$.zip`
* Dir: `bench\android-sdk`
* Path: `tools\bin`, `tools`
* Exe: `tools\bin\sdkmanager.bat`
* Environment:
    + `ANDROID_SDK_ROOT`: `$:Dir$`
* Launcher: Android Emulator
* LauncherExecutable: `tools\emulator.exe`
* LauncherArguments: `-avd`, `bench_x86`
* InitialPackages:
    + `extras;intel;Hardware_Accelerated_Execution_Manager`
    + `extras;google;usb_driver`
    + `emulator`
    + `build-tools;$:BuildToolsVersion$`
    + `platforms;android-$:PlatformVersion$`
    + `system-images;android-$:PlatformVersion$;google_apis;x86`

### Android Studio

Android Studio provides the fastest tools for building apps on every type of Android device.

World-class code editing, debugging, performance tooling, a flexible build system, and an instant build/deploy system all allow you to focus on building unique and high quality apps.

**HINT:** At the first run of Android Studio, you need to point it to the
Android SDK root directory in `%BENCH_HOME%\lib\apps\bench\android-sdk`.
Otherwise it will download and set up an additional Android SDK in the Windows user profile.

* ID: `Bench.AndroidStudio`
* Label: Android Studio
* Tags:
    + gui
    + ide
    + android
* Dependencies: `Bench.AndroidSDK`
* Website: <https://developer.android.com/studio/>
* License: Proprietary
* LicenseUrl: <https://developer.android.com/studio/terms.html>
* Version: 2.3.2.0
* Build: 162.3934792
* Url: `https://dl.google.com/dl/android/studio/ide-zips/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `android-studio-ide-$:Build$-windows32.zip`
* ArchiveName64Bit: `android-studio-ide-$:Build$-windows.zip`
* ArchivePath: `android-studio`
* Dir: `bench\android-studio`
* Exe32Bit: `bin\studio.exe`
* Exe64Bit: `bin\studio64.exe`
* Environment:
    + `STUDIO_PROPERTIES`: `$HomeDir$\android-studio.properties`
    + `STUDIO_VM_OPTIONS`: `$HomeDir$\android-studio.vmoptions`
* Launcher: $:Label$

## Math and Science

### jupyter for Python 2

Open source, interactive data science and scientific computing
across over 40 programming languages.

* ID: `Bench.Python2.Jupyter`
* Label: jupyter (Python 2)
* Tags:
    + gui
    + notebook
    + science
    + plotting
* Typ: `python2-package`
* Dependencies:
    + `Bench.Python2.IPython`
    + `Bench.Python.Tornado`
* Website: <https://jupyter.org>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/jupyter/jupyter/master/LICENSE>
* Docs:
    + Running the Notebook: <https://jupyter.readthedocs.io/en/latest/running.html>
* Exe: `Scripts\jupyter.exe`
* SetupTestFile: $:Exe$
* Launcher: jupyter Notebook
* LauncherArguments: `notebook`, `%*`

### MarkupSafe for Python 3

* ID: `Bench.Python3.MarkupSafe`
* Label: MarkupSafe (Python 3)
* PackageName: `MarkupSafe`
* Dependencies: `Bench.Python3.Pip`
* Website: <https://github.com/pallets/markupsafe>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/pallets/markupsafe/master/LICENSE>
* Version: 1.0
* CPythonVersion: `$Bench.Python3:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python3:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\$:PackageName$\__init__.py`

The pre-comiled version of this package comes from
<http://www.lfd.uci.edu/~gohlke/pythonlibs/>.
Thanks a lot to Christoph Golke for his service.

### jupyter for Python 3

Open source, interactive data science and scientific computing
across over 40 programming languages.

* ID: `Bench.Python3.Jupyter`
* Label: jupyter (Python 3)
* Tags:
    + gui
    + notebook
    + python
    + science
    + plotting
* Typ: `python3-package`
* Dependencies:
    + `Bench.Python3.IPython`
    + `Bench.Python3.MarkupSafe`
    + `Bench.Python.Tornado`
* Website: <https://jupyter.org>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/jupyter/jupyter/master/LICENSE>
* Docs:
    + Running the Notebook: <https://jupyter.readthedocs.io/en/latest/running.html>
* Exe: `Scripts\jupyter.exe`
* SetupTestFile: $:Exe$
* Launcher: jupyter Notebook
* LauncherArguments: `notebook`, `%*`

### GeoHash for Python 2

* ID: `Bench.Python2.GeoHash`
* Label: GeoHash (Python 2)
* Tags:
    + geography
* PackageName: `python_geohash`
* Dependencies: `Bench.Python2`
* Website: <https://github.com/hkwi/python-geohash>
* License: Apache-2.0
* LicenseUrl: <https://github.com/hkwi/python-geohash/raw/master/README>
* Version: 0.8.5
* CPythonVersion: `$Bench.Python2:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python2:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\geohash.py`

### GeoHash for Python 3

* ID: `Bench.Python3.GeoHash`
* Label: GeoHash (Python 3)
* Tags:
    + geography
* PackageName: `python_geohash`
* Dependencies: `Bench.Python3.Pip`
* Website: <https://github.com/hkwi/python-geohash>
* License: Apache-2.0
* LicenseUrl: <https://github.com/hkwi/python-geohash/raw/master/README>
* Version: 0.8.5
* CPythonVersion: `$Bench.Python3:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python3:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\geohash.py`

### MySQL Client for Python 2

* ID: `Bench.Python2.MySqlClient`
* Label: mysqlclient (Python 2)
* Tags:
    + database
    + sql
* PackageName: `mysqlclient`
* Dependencies: `Bench.Python2`
* Website: <https://github.com/PyMySQL/mysqlclient-python>
* License: GPL-2
* Version: 1.3.13
* CPythonVersion: `$Bench.Python2:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python2:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\MySQLdb\__init__.py`

### MySQL Client for Python 3

* ID: `Bench.Python3.MySqlClient`
* Label: mysqlclient (Python 3)
* Tags:
    + database
    + sql
* PackageName: `mysqlclient`
* Dependencies: `Bench.Python3.Pip`
* Website: <https://github.com/PyMySQL/mysqlclient-python>
* License: GPL-2
* Version: 1.3.13
* CPythonVersion: `$Bench.Python3:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python3:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\MySQLdb\__init__.py`

### Psycopg 2

* ID: `Bench.Python.Psycopg2`
* Typ: `python-package`
* Tags:
    + database
    + sql

### SciPy for Python 2

SciPy (pronounced “Sigh Pie”) is a Python-based ecosystem of open-source software for mathematics, science, and engineering.

* ID: `Bench.Python2.SciPy`
* Label: SciPy (Python 2)
* Tags:
    + science
* Typ: meta
* Dependencies:
    + `Bench.Python2`
    + `Bench.Python2.NumPy`
    + `Bench.Python2.SciPyLib`
    + `Bench.Python2.IPython`
    + `Bench.Python2.Jupyter`
    + `Bench.Python.Matplotlib`
    + `Bench.Python.SymPy`
    + `Bench.Python.Pandas`
* Website: <https://www.scipy.org/>

### SciPy for Python 3

SciPy (pronounced “Sigh Pie”) is a Python-based ecosystem of open-source software for mathematics, science, and engineering.

* ID: `Bench.Python3.SciPy`
* Label: SciPy (Python 3)
* Tags:
    + science
* Typ: meta
* Dependencies:
    + `Bench.Python3`
    + `Bench.Python3.NumPy`
    + `Bench.Python3.SciPyLib`
    + `Bench.Python3.IPython`
    + `Bench.Python3.Jupyter`
    + `Bench.Python.Matplotlib`
    + `Bench.Python.SymPy`
    + `Bench.Python.Pandas`
* Website: <https://www.scipy.org/>

### NumPy + MKL for Python 2

NumPy is the fundamental package for scientific computing with Python.

It contains among other things:

- a powerful N-dimensional array object
- sophisticated (broadcasting) functions
- tools for integrating C/C++ and Fortran code
- useful linear algebra, Fourier transform, and random number capabilities

Besides its obvious scientific uses, NumPy can also be used as an efficient multi-dimensional container of generic data. Arbitrary data-types can be defined. This allows NumPy to seamlessly and speedily integrate with a wide variety of databases.

* ID: `Bench.Python2.NumPy`
* Label: NumPy (Python 2)
* Tags:
    + math
    + numeric
    + linear algebra
    + fft
    + random
* PackageName: `numpy`
* Dependencies: `Bench.Python2`
* Website: <http://www.numpy.org/>
* Docs:
    + Manual: <https://docs.scipy.org/doc/numpy/>
    + User Guide: <https://docs.scipy.org/doc/numpy/user/>
    + Reference: <https://docs.scipy.org/doc/numpy/reference/>
* License: BSD-3-Clause
* LicenseUrl: <http://www.numpy.org/license.html>
* Version: 1.14.5
* CPythonVersion: `$Bench.Python2:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$+mkl-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$+mkl-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python2:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\$:PackageName$\version.py`

The pre-comiled version of this package comes from
<http://www.lfd.uci.edu/~gohlke/pythonlibs/>.
Thanks a lot to Christoph Golke for his service.

### NumPy + MKL for Python 3

NumPy is the fundamental package for scientific computing with Python.

It contains among other things:

- a powerful N-dimensional array object
- sophisticated (broadcasting) functions
- tools for integrating C/C++ and Fortran code
- useful linear algebra, Fourier transform, and random number capabilities

Besides its obvious scientific uses, NumPy can also be used as an efficient multi-dimensional container of generic data. Arbitrary data-types can be defined. This allows NumPy to seamlessly and speedily integrate with a wide variety of databases.

* ID: `Bench.Python3.NumPy`
* Label: NumPy (Python 3)
* Tags:
    + math
    + numeric
    + linear algebra
    + fft
    + random
* PackageName: `numpy`
* Dependencies: `Bench.Python3`
* Website: <http://www.numpy.org/>
* Docs:
    + Manual: <https://docs.scipy.org/doc/numpy/>
    + User Guide: <https://docs.scipy.org/doc/numpy/user/>
    + Reference: <https://docs.scipy.org/doc/numpy/reference/>
* License: BSD-3-Clause
* LicenseUrl: <http://www.numpy.org/license.html>
* Version: 1.14.5
* CPythonVersion: `$Bench.Python3:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$+mkl-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$+mkl-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python3:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\$:PackageName$\version.py`

The pre-comiled version of this package comes from
<http://www.lfd.uci.edu/~gohlke/pythonlibs/>.
Thanks a lot to Christoph Golke for his service.

### SciPy library for Python 2

The SciPy library is one of the core packages that make up the SciPy stack.
It provides many user-friendly and efficient numerical routines such as routines for numerical integration and optimization.

* ID: `Bench.Python2.SciPyLib`
* Label: SciPy library (Python 2)
* Tags:
    + science
* PackageName: `scipy`
* Dependencies: `Bench.Python2.NumPy`
* Website: <https://www.scipy.org/scipylib/>
* Docs:
    + Reference: <https://docs.scipy.org/doc/scipy/reference/>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/scipy/scipy/master/LICENSE.txt>
* Version: 1.0.0
* CPythonVersion: `$Bench.Python2:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python2:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\$:PackageName$\version.py`

The pre-comiled version of this package comes from
<http://www.lfd.uci.edu/~gohlke/pythonlibs/>.
Thanks a lot to Christoph Golke for his service.

### SciPy library for Python 3

The SciPy library is one of the core packages that make up the SciPy stack.
It provides many user-friendly and efficient numerical routines such as routines for numerical integration and optimization.

* ID: `Bench.Python3.SciPyLib`
* Label: SciPy library (Python 3)
* Tags:
    + science
* PackageName: `scipy`
* Dependencies: `Bench.Python3.NumPy`
* Website: <https://www.scipy.org/scipylib/>
* Docs:
    + Reference: <https://docs.scipy.org/doc/scipy/reference/>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/scipy/scipy/master/LICENSE.txt>
* Version: 1.0.0
* CPythonVersion: `$Bench.Python3:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python3:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\$:PackageName$\version.py`

The pre-comiled version of this package comes from
<http://www.lfd.uci.edu/~gohlke/pythonlibs/>.
Thanks a lot to Christoph Golke for his service.

### Matplotlib

Matplotlib is a Python 2D plotting library which produces publication quality figures in a variety of hardcopy formats and interactive environments across platforms.
Matplotlib can be used in Python scripts, the Python and IPython shell, the jupyter notebook, web application servers, and four graphical user interface toolkits.

* ID: `Bench.Python.Matplotlib`
* Label: Matplotlib
* Tags:
    + plotting
* Typ: `python-package`
* Website: <http://matplotlib.org/>
* Docs:
    + Documentation: <http://matplotlib.org/contents.html>
    + Examples: <http://matplotlib.org/examples/>
    + Plotting Commands Summary: <http://matplotlib.org/api/pyplot_summary.html>
* License: BSD compatible
* LicenseUrl: <http://matplotlib.org/users/license.html>

### SymPy

SymPy is a Python library for symbolic mathematics.
It aims to become a full-featured computer algebra system (CAS) while keeping the code as simple as possible in order to be comprehensible and easily extensible. SymPy is written entirely in Python.

* ID: `Bench.Python.SymPy`
* Label: SymPy
* Tags:
    + math
    + symbolic
    + algebra
* Typ: `python-package`
* Website: <http://www.sympy.org/>
* Docs:
    + Documentation: <http://docs.sympy.org/latest/index.html>
    + Tutorial: <http://docs.sympy.org/latest/tutorial/index.html>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/sympy/sympy/master/LICENSE>

### pandas

pandas is an open source, BSD-licensed library providing high-performance, easy-to-use data structures and data analysis tools for the Python programming language.

* ID: `Bench.Python.Pandas`
* Label: pandas
* Tags:
    + data science
* Typ: `python-package`
* Website: <http://pandas.pydata.org/>
* Docs:
    + Documentation: <http://pandas.pydata.org/pandas-docs/stable/>
    + 10 Minutes to pandas: <http://pandas.pydata.org/pandas-docs/stable/10min.html>
* License: BSD-3-Clause
* LicenseUrl: <http://pandas.pydata.org/pandas-docs/stable/overview.html#license>

### Embulk

Embulk is a open-source bulk data loader that helps data transfer
between various databases, storages, file formats, and cloud services.

Embulk supports:

- Automatic guessing of input file formats
- Parallel & distributed execution to deal with big data sets
- Transaction control to guarantee All-or-Nothing
- Resuming
- Plugins released on RubyGems.org

**WARNING:** Embulk does write to the Windows user profile `C:\Users\<user>\.embulk`
and does not respect the environment variable `HOME` or `USERPROFILE`.

**WARNING:** Embulk writes an error if the Bench environment resides under a path with spaces.

* ID: `Bench.Embulk`
* Tags:
    + cli
    + data science
    + database
* Dependencies: `Bench.JRE8`
* Website: <https://github.com/embulk/embulk>
* Docs:
    + Documentation: <http://www.embulk.org/docs/>
* Version: latest
* Url: `http://dl.embulk.org/$:ResourceName$`
* ResourceName: `embulk-latest.jar`
* Exe: `embulk.cmd`

### Data Build Tool

**Powerful command line data transformations**

dbt (data build tool) is a command line tool
that enables data analysts and engineers to transform data
in their warehouse more effectively.

* ID: `Bench.Python.Dbt`
* Label: dbt
* Tags:
    + cli
    + data science
    + database
    + sql
* Typ: `python-package`
* Website: <https://www.getdbt.com/>
* Docs:
    + Documentation: <https://docs.getdbt.com/reference>
* License: Apache-2.0

### Apache Superset for Python 2

Apache Superset (incubating) is a modern, enterprise-ready business intelligence web application.

* ID: `Bench.Python2.Superset`
* Label: Superset (Python 2)
* Tags:
    + data science
    + analysis
    + database
    + visualization
    + web-app
    + business intelligence
    + sql
* Typ: `python2-package`
* Dependencies:
    + `Bench.Python2.GeoHash`
    + `Bench.Python2.NumPy`
    + `Bench.Python2.MySqlClient`
    + `Bench.Python.Pandas`
    + `Bench.Python.Tornado`
    + `Bench.Python.Psycopg2`
* Website: <https://superset.incubator.apache.org/>
* License: Apache-2.0
* Exe: `$:Path$\superset.cmd`
* Launcher: $:Label$
* LauncherExecutable: `$Bench.Python2:Exe$`
* LauncherArguments: `-c`, `from superset import app; app.run(port=$:Port$)`
* LauncherWorkingDir: `$HomeDir$\.superset`
* LoadExamples: `true`
* AdminUser: `admin`
* AdminPassword: `bench`
* Port: 8088
* DefaultRowLimit: 10000
* MapBoxApiKey: `provide your API key here`

You can override the following app properties in your user app library
to customize the setup:
`LoadExamples`, `AdminUser`, `AdminPassword`, `Port`, `DefaultRowLimit`, `MapBoxApiKey`

### Apache Superset for Python 3

Apache Superset (incubating) is a modern, enterprise-ready business intelligence web application.

* ID: `Bench.Python3.Superset`
* Label: Superset (Python 3)
* Tags:
    + data science
    + analysis
    + database
    + visualization
    + web-app
    + business intelligence
    + sql
* Typ: `python3-package`
* Dependencies:
    + `Bench.Python3.GeoHash`
    + `Bench.Python3.NumPy`
    + `Bench.Python3.MySqlClient`
    + `Bench.Python3.MarkupSafe`
    + `Bench.Python.Pandas`
    + `Bench.Python.Tornado`
    + `Bench.Python.Psycopg2`
* Website: <https://superset.incubator.apache.org/>
* License: Apache-2.0
* Exe: `$:Path$\superset.cmd`
* Launcher: $:Label$
* LauncherExecutable: `$Bench.Python3:Exe$`
* LauncherArguments: `-c`, `from superset import app; app.run(port=$:Port$)`
* LauncherWorkingDir: `$HomeDir$\.superset`
* LoadExamples: `true`
* AdminUser: `admin`
* AdminPassword: `bench`
* Port: 8088
* DefaultRowLimit: 10000
* MapBoxApiKey: `provide your API key here`

You can override the following app properties in your user app library
to customize the setup:
`LoadExamples`, `AdminUser`, `AdminPassword`, `Port`, `DefaultRowLimit`, `MapBoxApiKey`

### Pillow

Pillow is the friendly PIL fork by Alex Clark and Contributors.
PIL is the _Python Imaging Library_ by Fredrik Lundh and Contributors.

* ID: `Bench.Python.Pillow`
* Label: Pillow
* Tags:
    + graphics
* Typ: `python-package`
* Website: <http://python-pillow.org>
* License: PIL-SL
* LicenseUrl: <https://raw.githubusercontent.com/python-pillow/Pillow/master/LICENSE>
* SetupTestFile: `$:Dir$\lib\site-packages\PIL\__init__.py`

### PyShp

The Python Shapefile Library (pyshp) reads and writes ESRI Shapefiles in pure Python.

* ID: `Bench.Python.PyShp`
* Label: PyShp
* Tags:
    + shapefile
    + esri
* Typ: `python-package`
* Website: <https://github.com/GeospatialPython/pyshp>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/GeospatialPython/pyshp/master/LICENSE.TXT>
* SetupTestFile: `$:Dir$\lib\site-packages\shapefile.py`

### PyProj for Python 2

Performs cartographic transformations and geodetic computations.

* ID: `Bench.Python2.PyProj`
* Label: PyProj (Python 2)
* Tags:
    + math
    + cartographic
    + geodetic
* Dependencies:
    + `Bench.Python2`
* Website: <https://jswhit.github.io/pyproj/>
* License: BSD-3-Clause
* LicenseUrl: <https://jswhit.github.io/pyproj/>
* Version: 1.9.5.1
* CPythonVersion: `$Bench.Python2:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python2:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\$:PackageName$\__init__.py`

### PyProj for Python 3

Performs cartographic transformations and geodetic computations.

* ID: `Bench.Python3.PyProj`
* Label: PyProj (Python 3)
* Tags:
    + math
    + cartographic
    + geodetic
* Dependencies:
    + `Bench.Python3.Pip`
* Website: <https://jswhit.github.io/pyproj/>
* License: BSD-3-Clause
* LicenseUrl: <https://jswhit.github.io/pyproj/>
* Version: 1.9.5.1
* CPythonVersion: `$Bench.Python3:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python3:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\$:PackageName$\__init__.py`

### Basemap for Python 2

* ID: `Bench.Python2.Basemap`
* Label: Basemap (Python 2)
* Tags:
    + plotting
    + geography
    + maps
* Dependencies:
    + `Bench.Python2`
    + `Bench.Python2.NumPy`
    + `Bench.Python2.PyProj`
    + `Bench.Python.Matplotlib`
    + `Bench.Python.Pillow`
    + `Bench.Python.PyShp`
* Website: <https://github.com/matplotlib/basemap>
* License: GPL-2.0
* Version: 1.1.0
* CPythonVersion: `$Bench.Python2:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python2:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\mpl_toolkits\basemap\__init__.py`

The pre-comiled version of this package comes from
<http://www.lfd.uci.edu/~gohlke/pythonlibs/>.
Thanks a lot to Christoph Golke for his service.

### Basemap for Python 3

* ID: `Bench.Python3.Basemap`
* Label: Basemap (Python 3)
* Tags:
    + plotting
    + geography
* Dependencies:
    + `Bench.Python3.Pip`
    + `Bench.Python3.NumPy`
    + `Bench.Python3.PyProj`
    + `Bench.Python.Matplotlib`
    + `Bench.Python.Pillow`
    + `Bench.Python.PyShp`
* Website: <https://github.com/matplotlib/basemap>
* License: GPL-2.0
* Version: 1.1.0
* CPythonVersion: `$Bench.Python3:CPythonVersion$`
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win32.whl`
* ArchiveName64Bit: `$:PackageName$-$:Version$-cp$:CPythonVersion$-cp$:CPythonVersion$m-win_amd64.whl`
* ArchiveTyp: custom
* Dir: `$Bench.Python3:Dir$`
* Register: false
* SetupTestFile: `$:Dir$\lib\site-packages\mpl_toolkits\basemap\__init__.py`

The pre-comiled version of this package comes from
<http://www.lfd.uci.edu/~gohlke/pythonlibs/>.
Thanks a lot to Christoph Golke for his service.

### scikit-learn

Machine Learning in Python

- Simple and efficient tools for data mining and data analysis
- Accessible to everybody, and reusable in various contexts
- Built on NumPy, SciPy, and matplotlib
- Open source, commercially usable - BSD license

* ID: `Bench.Python3.SciKitLearn`
* Label: scikit-learn
* Tags:
    + machine learning
* Typ: `python3-package`
* PackageName: `scikit-learn`
* Dependencies:
    + `Bench.Python3.NumPy`
    + `Bench.Python3.SciPyLib`
    + `Bench.Python.Matplotlib`
* Website: <http://scikit-learn.org>
* Docs:
    + Documentation: <http://scikit-learn.org/stable/documentation.html>
    + Quick Start: <http://scikit-learn.org/stable/tutorial/basic/tutorial.html>
    + Tutorials: <http://scikit-learn.org/stable/tutorial/index.html>
    + User Guide: <http://scikit-learn.org/stable/user_guide.html>
    + API Reference: <http://scikit-learn.org/stable/modules/classes.html>
    + Examples: <http://scikit-learn.org/stable/auto_examples/index.html>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/scikit-learn/scikit-learn/master/COPYING>
* SetupTestFile: `$:Dir$\lib\site-packages\sklearn\__init__.py`

### TensorFlow

TensorFlow™ is an open source software library for numerical computation using data flow graphs. Nodes in the graph represent mathematical operations, while the graph edges represent the multidimensional data arrays (tensors) communicated between them. The flexible architecture allows you to deploy computation to one or more CPUs or GPUs in a desktop, server, or mobile device with a single API.

TensorFlow was originally developed by researchers and engineers working on the Google Brain Team within Google's Machine Intelligence research organization for the purposes of conducting machine learning and deep neural networks research, but the system is general enough to be applicable in a wide variety of other domains as well.

* ID: `Bench.TensorFlow`
* Label: TensorFlow
* Tags:
    + machine learning
    + deep learning
* Typ: `python3-package`
* Dependencies:
    + `Bench.Python3.NumPy`
    + `Bench.Python3.SciPyLib`
    + `Bench.Python.Pandas`
* Website: <https://www.tensorflow.org>
* Docs:
    + Documentation: <https://www.tensorflow.org/community/documentation>
    + API: <https://www.tensorflow.org/api_docs/>
    + API for Python: <https://www.tensorflow.org/api_docs/python/>
* License: Apache-2.0
* Version: latest
* Only64Bit: `true`

## Filesystem

### Sift

Sift - grep on steroids. A fast and powerful alternative to grep.

* ID: `Bench.Sift`
* Tags:
    + cli
    + grep
    + search
    + filesystem
* Website: <https://sift-tool.org/>
* License: GPL-3.0
* Docs:
    + Documentation: <https://sift-tool.org/docs>
* Version: 0.9.0
* Url: `https://sift-tool.org/downloads/sift/$:ArchiveName$`
* ArchiveName32Bit: `sift_$:Version$_windows_386.zip`
* ArchiveName64Bit: `sift_$:Version$_windows_amd64.zip`

### WinMerge

WinMerge is an Open Source differencing and merging tool for Windows.
WinMerge can compare both folders and files, presenting differences in a visual text format
that is easy to understand and handle.

* ID: `Bench.WinMerge`
* Tags:
    + gui
    + diff
    + compare
    + filesystem
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

### DiffMerge

DiffMerge is an application to visually compare and merge files on Windows, OS X and Linux.

* ID: `Bench.DiffMerge`
* Tags:
    + gui
    + diff
    + compare
    + filesystem
* Website: <http://www.sourcegear.com/diffmerge/>
* Docs:
    + Documentation: `DiffMerge.chm`
    + Command Line Arguments: <http://www.sourcegear.com/diffmerge/webhelp/chapter_clargs.html>
* License: Closed Source
* LicenseUrl: <http://www.sourcegear.com/diffmerge/webhelp/chapter_sourcegearlicenseagreement.html>
* Version: 4.2.0
* Release: 4_2_0_697_stable
* Url: `http://download.sourcegear.com/DiffMerge/$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath32Bit: `DiffMerge_$:Release$_x86`
* ArchivePath64Bit: `DiffMerge_$:Release$_x64`
* Exe: `sgdm.exe`
* Launcher: $:Label$

### Ant Renamer

Ant Renamer is a free program that makes easier the renaming of lots of files and folders
by using specified settings.

* ID: `Bench.AntRenamer`
* Label: Ant Renamer
* Tags:
    + gui
    + filesystem
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
* Tags:
    + cli
    + cd
    + dvd
    + optical drive
* Website: <http://cdrtools.sourceforge.net/private/cdrecord.html>
* License: GPL-2.0
* Docs:
    + Manual: <http://cdrtools.sourceforge.net/private/man/cdrecord/index.html>
* Url: <https://sourceforge.net/projects/cdrtoolswin/files/1.0/Binaries/CDR-Tools.exe>
* ArchiveName: `CDR-Tools.exe`
* Exe: `mkisofs.exe`

## Network

### FileZilla

FileZilla Client is a free, open source FTP client. It supports FTP, SFTP, and FTPS (FTP over SSL/TLS).

* ID: `Bench.FileZilla`
* Tags:
    + gui
    + ftp
    + network
* Website: <https://filezilla-project.org/>
* License: GPL-3.0
* Docs:
    + Documentation: <https://wiki.filezilla-project.org/Documentation>
    + Usage: <https://wiki.filezilla-project.org/Using>
    + Tutorial: <https://wiki.filezilla-project.org/FileZilla_Client_Tutorial_(en)>
* Version: 3.29.0
* Url: `https://sourceforge.net/projects/filezilla/files/FileZilla_Client/$:Version$/$:ArchiveName$`
* ArchiveName: `FileZilla_$:Version$_win32.zip`
* ArchivePath: `FileZilla-$:Version$`
* Exe: `filezilla.exe`
* Register: `false`
* Launcher: $:Label$

### WinSCP

WinSCP is an open source free SFTP client, FTP client, WebDAV client and SCP client for Windows.
Its main function is file transfer between a local and a remote computer.
Beyond this, WinSCP offers scripting and basic file manager functionality.

* ID: `Bench.WinSCP`
* Tags:
    + gui
    + ftp
    + ssh
    + sftp
    + scp
    + network
* License: GPL-3.0
* LicenseUrl: license.txt
* Website: <https://winscp.net>
* Docs:
    + Introduction: <https://winscp.net/eng/docs/introduction>
    + Documentation: <https://winscp.net/eng/docs/start>
    + Command Line: <https://winscp.net/eng/docs/commandline>
* Version: 5.11.2
* Url: `https://sourceforge.net/projects/winscp/files/WinSCP/$:Version$/$:ArchiveName$`
* ArchiveName: `WinSCP-$:Version$-Portable.zip`
* Launcher: $:Label$

### SRWare Iron

A free portable derivative of Chromium, optimized for privacy.

* ID: `Bench.Iron`
* Label: SWare Iron
* Tags:
    + gui
    + chromium
    + browser
* Website: <http://www.chromium.org/Home>
* License: Mixed OS License
* Version: latest
* Url: <http://www.srware.net/downloads/IronPortable.zip>
* ArchivePath: `IronPortable\Iron`
* ArchiveName: `IronPortable.zip`
* Exe: `chrome.exe`
* Launcher: $:Label$

## Services

### Tftpd

Tftpd64/32 is a free, opensource IPv6 ready application which includes
DHCP, TFTP, DNS, SNTP and Syslog servers as well as a TFTP client.
The TFTP client and server are fully compatible with TFTP option support
(tsize, blocksize and timeout), which allow the maximum performance
when transferring the data.

Some extended features such as directory facility, security tuning, interface filtering;
progress bars and early acknowledgments enhance usefulness and throughput of the TFTP protocol
for both client and server.

The included DHCP server provides unlimited automatic or static IP address assignment.

* ID: `Bench.TFTPD`
* Tags:
    + gui
    + server
    + network
    + tftp
    + dhcp
    + dns
    + syslog
* Website: <http://www.tftpd64.com/>
* Docs:
    + FAQ: <http://www.tftpd64.com/tftpd32_faq.html>
* Label: Tftpd
* License: EUPL-1.1
* LicenseUrl: <http://www.tftpd64.com/tftpd32_license.html>
* Version: 4.62
* Release: 462
* Url: <https://bitbucket.org/phjounin/tftpd64/downloads/$:ArchiveName$>
* ArchiveName32Bit: `tftpd32.$:Release$.zip`
* ArchiveName64Bit: `tftpd64.$:Release$.zip`
* Launcher: `$:Label$`
* Exe32Bit: `tftpd32.exe`
* Exe64Bit: `tftpd64.exe`

### MySQL

According to Oracle:
MySQL Community Edition is the freely downloadable version
of the world's most popular open source database.

The MySQL data is stored in `%USERPROFILE%\mysql_data`.
You can start the MySQL server by running `mysql_start` in the _Bench_ shell.
You can stop the MySQL server by running `mysql_stop` in the _Bench_ shell.
The initial password for _root_ is `bench`.

* ID: `Bench.MySQL`
* Tags:
    + cli
    + server
    + database
    + sql
    + relational
* Website: <http://www.mysql.com/>
* License: GPL-2.0
* Docs:
    + Documentation: `http://dev.mysql.com/doc/refman/$:VersionMajor$/en/`
    + SQL Syntax: `http://dev.mysql.com/doc/refman/$:VersionMajor$/en/sql-syntax.html`
    + Data Types: `http://dev.mysql.com/doc/refman/$:VersionMajor$/en/data-types.html`
    + Functions: `http://dev.mysql.com/doc/refman/$:VersionMajor$/en/functions.html`
* VersionMajor: 5.7
* Version: $:VersionMajor$.22
* Url: `http://dev.mysql.com/get/Downloads/MySQL-$:VersionMajor$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath32Bit: `mysql-$:Version$-win32`
* ArchivePath64Bit: `mysql-$:Version$-winx64`
* Path: `bin`
* Exe: `bin\mysqld.exe`
* MySqlServerOptionFile: `$HomeDir$\mysqld.cnf`
* MySqlDataDir: `$HomeDir$\mysql_data`
* Environment:
    + `MYSQL_SERVER_OPTION_FILE`: `$:MySqlServerOptionFile$`
    + `MYSQL_DATA`: `$:MySqlDataDir$`
    + `TZ`: `UTC`
* Launcher: MySQL Server
* LauncherExecutable: `bin\mysql_server.cmd`

### MySQL Utilities

* ID: `Bench.MySQLUtils`
* Label: MySQL Utilities
* Tags:
    + cli
    + mysql
* Website: <https://dev.mysql.com/downloads/utilities/>
* License: GPL-2.0
* Docs:
    + Documentation: `https://dev.mysql.com/doc/mysql-utilities/$:VersionMajor$/en/`
* VersionMajor: 1.6
* Version: $:VersionMajor$.5
* Url: `https://dev.mysql.com/get/Downloads/MySQLGUITools/$:ArchiveName$`
* ArchiveName32Bit: `mysql-utilities-$:Version$-win32.msi`
* ArchiveName64Bit: `mysql-utilities-$:Version$-winx64.msi`
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
* Tags:
    + gui
    + mysql
    + ide
* Website: <http://dev.mysql.com/downloads/workbench/>
* License: GPL-2.0
* Docs:
    + Documentation: <http://dev.mysql.com/doc/workbench/en/>
* Version: 6.3.8
* Url: `https://dev.mysql.com/get/Downloads/MySQLGUITools/$:ArchiveName$`
* ArchiveName32Bit: `mysql-workbench-community-$:Version$-win32-noinstall.zip`
* ArchiveName64Bit: `mysql-workbench-community-$:Version$-winx64-noinstall.zip`
* ArchivePath: `MySQL Workbench $:Version$ CE (winx64)`
* Exe: `MySQLWorkbench.exe`
* Register: `false`
* Launcher: $:Label$

### PostgreSQL

PostgreSQL is a powerful, open source object-relational database system with
over 30 years of active development that has earned it a strong reputation
for reliability, feature robustness, and performance.

It is fully ACID compliant, has full support for foreign keys, joins, views,
triggers, and stored procedures (in multiple languages).
It also supports storage of binary large objects, including pictures, sounds, or video.
It has native programming interfaces for C/C++, Java, .Net, Perl, Python,
Ruby, Tcl, ODBC, among others

Contains the _PostgreSQL Server_ and the management tool _pgAdmin 4_.
The initial password for _postgres_ is `bench`.

To run the server open a Bench Shell and run `postgresql_server.cmd`.
You can also use `postgresql_start.cmd` and `postgresql_stop.cmd`
if you do not want a console window to hang around.
Use `postgresql_log.cmd` to open the servers log file.

* ID: `Bench.PostgreSQL`
* Tags:
    + cli
    + server
    + database
    + sql
    + relational
* Website: <http://www.postgresql.org>
* License: PostgreSQL
* LicenseUrl: <https://www.postgresql.org/about/licence/>
* Docs:
    + Documentation: <https://www.postgresql.org/docs/10.5/static/index.html>
* Version: 10.5
* Url: `http://get.enterprisedb.com/postgresql/$:ArchiveName$`
* ArchiveName32Bit: `postgresql-$:Version$-1-windows-binaries.zip`
* ArchiveName64Bit: `postgresql-$:Version$-1-windows-x64-binaries.zip`
* ArchivePath: `pgsql`
* Dir: `bench\postgres`
* Path: `bin`
* Exe: `bin\postgres.exe`
* Launcher: `PostgreSQL Server`
* LauncherExecutable: `bin\postgresql_server.cmd`
* PostgreSqlDataDir: `$HomeDir$\pg_data`
* PostgreSqlLogFile: `$HomeDir$\pg.log`
* Environment:
	+ `PGDATA`: `$:PostgreSqlDataDir$`
	+ `PG_LOG`: `$:PostgreSqlLogFile$`

### PostgreSQL Admin 4

pgAdmin is the leading Open Source management tool for Postgres,
the world’s most advanced Open Source database.
pgAdmin 4 is designed to meet the needs of both novice and experienced
Postgres users alike, providing a powerful graphical interface
that simplifies the creation, maintenance and use of database objects.

pgAdmin consists of a locally running, Python based web server,
which is controlled by a status icon in the Windows task bar.
The user interface is displayed via a web browser.

* ID: `Bench.PgAdmin`
* Label: PostgreSQL Admin 4
* Tags:
    + web
    + client
    + postgresql
    + sql
* Website: <https://www.pgadmin.org/>
* License: PostgreSQL
* LicenseUrl: <https://www.postgresql.org/about/licence/>
* Docs:
    + Documentation: <https://www.pgadmin.org/docs/pgadmin4/3.x/>
* Version: 3.2
* Dir: `$Bench.PostgreSQL:Dir$`
* Url: `https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v$:Version$/windows/$:ArchiveName$`
* ArchiveName: `pgadmin4-$:Version$-x86.exe`
* ArchiveTyp: `inno`
* Dir: `bench\pgadmin`
* Path: `runtime`
* Exe: `runtime\pgAdmin4.exe`
* Launcher: `$:Label$`

### Fake Sendmail

`sendmail.exe` is a simple windows console application that emulates sendmail's "-t" option
to deliver emails piped via stdin.

It is intended to ease running unix code that has `sendmail` hardcoded as an email delivery means.
It doesn't support deferred delivery, and requires an smtp server to perform the actual delivery of the messages.

Alternatively it can store emails as files in a directory for debugging.

This app automatically registers itself in PHP 5 and PHP 7.

* ID: `Bench.FakeSendmail`
* Tags:
    + cli
    + email
* Website: `https://www.glob.com.au/sendmail/`
* Url: `https://www.glob.com.au/sendmail/$:ArchiveName$`
* ArchiveName: `sendmail.zip`
* Exe: `sendmail.exe`
* MailDeliveryDir: `$HomeDir$\fakesendmails`

### Apache

The Apache HTTP Server is a secure, efficient and extensible server
that provides HTTP services in sync with the current HTTP standards.
The Apache HTTP Server is the most popular web server since over 20 years.

This application needs the _Visual C++ 15 Redistributable_ [32 Bit Version](https://go.microsoft.com/fwlink/?LinkId=746571) or [64 Bit Version](https://go.microsoft.com/fwlink/?LinkId=746572) installed.

* ID: `Bench.Apache`
* Tags:
    + cli
    + server
    + network
    + http
    + web
* Website: <https://httpd.apache.org/>
* License: Apache-2.0
* LicenseUrl: <http://www.apache.org/licenses/LICENSE-2.0>
* Docs:
    + Documentation: <http://httpd.apache.org/docs/2.4/en/>
* Version: 2.4.33
* Url: `http://www.apachelounge.com/download/VC15/binaries/$:ArchiveName$`
* ArchiveName32Bit: `httpd-$:Version$-win32-VC15.zip`
* ArchiveName64Bit: `httpd-$:Version$-win64-VC15.zip`
* ArchivePath: `Apache24`
* Path: `bin`
* Exe: `bin\httpd.exe`
* Launcher: Apache Web Server
* HttpdDocumentRoot: `$HomeDir$\www`
* HttpdListen: `127.0.0.1:80`
* UserConfigFile: `$HomeDir$\httpd-bench.conf`

### Tornado

Tornado is a Python web framework and asynchronous networking library, originally developed at FriendFeed. By using non-blocking network I/O, Tornado can scale to tens of thousands of open connections, making it ideal for long polling, WebSockets, and other applications that require a long-lived connection to each user.

* ID: `Bench.Python.Tornado`
* Label: Tornado
* Tags:
    + server
    + http
    + python
* Typ: `python-package`
* Version: 5.1
* Website: <http://www.tornadoweb.org/>
* License: Apache-2.0

### RabbitMQ

RabbitMQ is ...  
Robust messaging for applications,
Easy to use,
Runs on all major operating systems,
Supports a huge number of developer platforms,
Open source and commercially supported

* ID: `Bench.RabbitMQ`
* Tags:
    + cli
    + server
    + message queue
    + broker
    + amqp
* Website: <http://www.rabbitmq.com>
* License: MPL-1.1
* LicenseUrl: <https://www.rabbitmq.com/mpl.html>
* Docs:
    + Documentation: <http://www.rabbitmq.com/documentation.html>
    + Web Interface: <http://localhost:15672/>
* Dependencies: `Bench.Erlang`
* Version: 3.7.0
* Url: `https://dl.bintray.com/rabbitmq/all/rabbitmq-server/$:Version$/$:ArchiveName$`
* ArchiveName: `rabbitmq-server-windows-$:Version$.zip`
* ArchivePath: `rabbitmq_server-$:Version$`
* Path: `sbin`
* Exe: `sbin\rabbitmq-server.bat`

The setup automatically activates the web management plugin.
So after starting the server on the command line with `rabbitmq-server`,
the web UI is available under <http://localhost:15672/>.
At first start you can login with user `guest` and passwort `guest`.

### Memcached

Free & open source, high-performance, distributed memory object caching system,
generic in nature, but intended for use in speeding up dynamic web applications
by alleviating database load.

* ID: `Bench.Memcached`
* Tags:
    + cli
    + server
    + cache
    + in-memory
* Website: <http://memcached.org/>
* License: BSD-3-Clause
* Version: 1.4.5
* Url: `https://blog.elijaa.org/public/$:ArchiveName$`
* ArchiveName64Bit: `memcached-$:Version$-win64.zip`
* ArchiveName32Bit: `memcached-$:Version$-win32.zip`
* ArchivePath64Bit: `memcached-amd64`
* ArchivePath32Bit: `memcached-x86`
* Launcher: $:Label$

## Monitoring

### Prometheus

Power your metrics and alerting with a leading open-source monitoring solution.

* ID: `Bench.Prometheus`
* Tags:
    + cli
    + server
    + database
    + time series
    + metrics
* Website: <https://prometheus.io>
* License: Apache-2.0
* Docs:
    + Web Interface: <http://localhost:9090/>
    + Documentation: <https://prometheus.io/docs/introduction/overview/>
    + Querying: <https://prometheus.io/docs/querying/basics/>
    + HTTP API: <https://prometheus.io/docs/querying/api/>
* Version: 1.8.1
* Url: `https://github.com/prometheus/prometheus/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.tar.gz`
* ArchivePath32Bit: `prometheus-$:Version$.windows-386`
* ArchivePath64Bit: `prometheus-$:Version$.windows-amd64`
* Launcher: $:Label$
* LauncherWorkingDir: `$:Dir$`
* LauncherArguments:
    + `-config.file`
    + `$HomeDir$\prometheus.yml`
    + `-storage.local.path`
    + `$HomeDir$\prometheus_data`

### Prometheus Push Gateway

The Prometheus Pushgateway exists to allow ephemeral and batch jobs
to expose their metrics to Prometheus.
Since these kinds of jobs may not exist long enough to be scraped,
they can instead push their metrics to a Pushgateway.
The Pushgateway then exposes these metrics to Prometheus.

* ID: `Bench.Prometheus.PushGateway`
* Label: Prometheus Push Gateway
* Tags:
    + cli
    + server
    + monitoring
    + metrics
* Dependencies: `Bench.Prometheus`
* Website: <https://github.com/prometheus/pushgateway>
* License: Apache-2.0
* Version: 0.4.0
* Url: `https://github.com/prometheus/pushgateway/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.tar.gz`
* ArchivePath32Bit: `pushgateway-$:Version$.windows-386`
* ArchivePath64Bit: `pushgateway-$:Version$.windows-amd64`
* Dir: `bench\pushgateway`
* Exe: `pushgateway.exe`
* Launcher: $:Label$
* LauncherArguments: `-web.listen-address`, `127.0.0.1:$:Port$`
* LauncherWorkingDir: `$:Dir$`
* JobName: `pushgateway`
* Port: 9091

### Prometheus WMI Exporter

Prometheus exporter for Windows machines using WMI

* ID: `Bench.Prometheus.WmiExporter`
* Label: Prometheus WMI Exporter
* Tags:
    + cli
    + server
    + monitoring
    + system
    + node
* Dependencies: `Bench.Prometheus`
* Website: <https://github.com/martinlindhe/wmi_exporter>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/martinlindhe/wmi_exporter/master/LICENSE>
* Version: 0.2.7
* Url: `https://github.com/martinlindhe/wmi_exporter/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `wmi_exporter-386.zip`
* ArchiveName64Bit: `wmi_exporter-amd64.zip`
* Dir: `bench\prometheus_wmi`
* Exe: `wmi_exporter.exe`
* Launcher: $:Label$
* LauncherArguments: `-telemetry.addr`, `:$:Port$`
* LauncherWorkingDir: `$:Dir$`
* JobName: `wmi`
* Port: 9182

### Prometheus Grok Exporter

Prometheus exporter for arbitrary unstructured log data

* ID: `Bench.Prometheus.GrokExporter`
* Label: Prometheus Grok Exporter
* Tags:
    + cli
    + server
    + monitoring
    + log
    + logfile
    + parser
* Dependencies: `Bench.Prometheus`
* Website: <https://github.com/fstab/grok_exporter>
* License: Apache-2.0
* Version: 0.2.1
* Only64Bit: `true`
* Url: `https://github.com/fstab/grok_exporter/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath64Bit: `grok_exporter-$:Version$.windows-amd64`
* Dir: `bench\prometheus_grok`
* Exe: `grok_exporter.exe`
* Launcher: $:Label$
* LauncherArguments: `-config`, `$:ConfigFile$`
* LauncherWorkingDir: `$:Dir$`
* JobName: `grok`
* Port: 9144
* ConfigFile: `$HomeDir$\grok_config.yml`

### Prometheus MySQL Exporter

Prometheus exporter for MySQL Server

* ID: `Bench.Prometheus.MySqlExporter`
* Label: Prometheus MySQL Exporter
* Tags:
    + cli
    + server
    + monitoring
* Dependencies: `Bench.Prometheus`, `Bench.MySQL`
* Website: <https://github.com/prometheus/mysqld_exporter>
* License: Apache-2.0
* Version: 0.10.0
* Url: `https://github.com/prometheus/mysqld_exporter/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.tar.gz`
* ArchivePath32Bit: `mysqld_exporter-$:Version$.windows-386`
* ArchivePath64Bit: `mysqld_exporter-$:Version$.windows-amd64`
* Dir: `bench\prometheus_mysqld`
* Exe: `mysqld_exporter.exe`
* Launcher: $:Label$
* LauncherArguments: `-web.listen-address`, `127.0.0.1:$:Port$`
* LauncherWorkingDir: `$:Dir$`
* JobName: `mysql`
* Port: 9104

### Prometheus RabbitMQ Exporter

Prometheus exporter for RabbitMQ

* ID: `Bench.Prometheus.RabbitMqExporter`
* Label: Prometheus RabbitMQ Exporter
* Tags:
    + cli
    + server
    + monitoring
* Dependencies: `Bench.Prometheus`, `Bench.RabbitMQ`
* Website: <https://github.com/kbudde/rabbitmq_exporter>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/kbudde/rabbitmq_exporter/master/LICENSE>
* Version: 0.25.1
* Url: `https://github.com/kbudde/rabbitmq_exporter/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.tar.gz`
* ArchivePath32Bit: `rabbitmq_exporter-$:Version$.windows-386`
* ArchivePath64Bit: `rabbitmq_exporter-$:Version$.windows-amd64`
* Dir: `bench\prometheus_rabbitmq`
* Exe: `rabbitmq_exporter.cmd`
* Launcher: $:Label$
* LauncherWorkingDir: `$:Dir$`
* Port: 9672
* JobName: `rabbitmq`
* IncludeQueues: `.*`
* SkipQueues: `^$`

### Prometheus Memcached Exporter

Prometheus exporter for Memcached Server

* ID: `Bench.Prometheus.MemcachedExporter`
* Label: Prometheus Memcached Exporter
* Tags:
    + cli
    + server
    + monitoring
* Dependencies: `Bench.Prometheus`, `Bench.Memcached`
* Website: <https://github.com/prometheus/memcached_exporter>
* License: Apache-2.0
* Version: 0.3.0
* Url: `https://github.com/prometheus/memcached_exporter/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.tar.gz`
* ArchivePath32Bit: `memcached_exporter-$:Version$.windows-386`
* ArchivePath64Bit: `memcached_exporter-$:Version$.windows-amd64`
* Dir: `bench\prometheus_memcached`
* Exe: `memcached_exporter.exe`
* Launcher: $:Label$
* LauncherWorkingDir: `$:Dir$`
* LauncherArguments: `-memcached.address`, `$:MemcachedAddress$`, `-web.listen-address`, `127.0.0.1:$:Port$`
* JobName: `memcached`
* Port: 9150
* MemcachedAddress: `localhost:11211`

### Grafana

The open platform for beautiful analytics and monitoring

* ID: `Bench.Grafana`
* Tags:
    + server
    + web
    + monitoring
    + plotting
    + dashboard
* Website: <https://grafana.com/>
* License: Apache-2.0
* Docs:
    + Web Interface: <http://localhost:3000/>
    + Configuration: <http://docs.grafana.org/installation/configuration/>
    + Getting Started: <http://docs.grafana.org/guides/getting_started/>
* Version: 4.6.2
* Only64Bit: `true`
* Url: `https://s3-us-west-2.amazonaws.com/grafana-releases/release/$:ArchiveName$`
* ArchiveName64Bit: `grafana-$:Version$.windows-x64.zip`
* ArchivePath: `grafana-$:Version$`
* Path: `bin`
* Exe: `bin\grafana-server.exe`
* DataDir: `$HomeDir$\grafana`
* Launcher: $:Label$
* LauncherWorkingDir: `$:Dir$`

## Writing

### MiKTeX

MiKTeX (pronounced mick-tech) is an up-to-date implementation of TeX/LaTeX
and related programs for Windows (all current variants).

* ID: `Bench.MiKTeX`
* Tags:
    + cli
    + gui
    + latex
    + tex
    + writing
    + pdf
* Website: <http://miktex.org/portable>
* License: Mixed OS License
* Docs:
    + Manual: <http://docs.miktex.org/2.9/manual/>
    + LaTeX Guides: <https://latex-project.org/guides/>
* Version: 2.9.6753
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName: `miktex-portable-$:Version$.exe`
* ArchivePath: `texmfs\install`
* Path: `miktex\bin`
* Exe: `miktex\bin\latex.exe`
* Launcher: `MiKTeX Tray Icon`
* LauncherExecutable: `miktex\bin\miktex-taskbar-icon.exe`
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
    + `fancyhdr`
    + `booktabs`

**Note:** The packages installed by default (property `DefaultPackages`)
are selected to suit the needs of the default LaTeX template of _Pandoc_.

### Pandoc

Pandoc is a library and command-line tool for converting from one markup format to another.

* ID: `Bench.Pandoc`
* Tags:
    + cli
    + writing
    + latex
    + html
    + pdf
* Website: <http://pandoc.org>
* License: GPL-2.0
* LicenseUrl: `https://hackage.haskell.org/package/pandoc-$:Version$/src/COPYING.md`
* Docs:
    + User's Guide: <http://pandoc.org/README.html>
    + FAQ: <http://pandoc.org/faqs.html>
* Version: 2.2.1
* Release: $:Version$
* Url: `https://github.com/jgm/pandoc/releases/download/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `pandoc-$:Release$-windows-i386.zip`
* ArchiveName64Bit: `pandoc-$:Release$-windows-x86_64.zip`
* ArchivePath: `pandoc-$:Release$`
* Exe: `pandoc.exe`

### JabRef

JabRef is an open source bibliography reference manager.
The native file format used by JabRef is BibTeX, the standard LaTeX bibliography format.

* ID: `Bench.JabRef`
* Tags:
    + gui
    + writing
    + bibliography
    + bibtex
    + latex
* Dependencies: `Bench.JRE8`
* Website: <http://www.jabref.org>
* License: MIT
* LicenseUrl: <https://github.com/JabRef/jabref/blob/master/LICENSE.md>
* Docs:
    + Help: <http://help.jabref.org/en/>
    + FAQ: <http://www.jabref.org/faq/>
* Version: 4.3.1
* Url: `https://github.com/JabRef/jabref/releases/download/v$:Version$/$:ResourceName$`
* ResourceName: `JabRef-$:Version$.jar`
* Exe: `$:ResourceName$`
* Launcher: $:Label$
* LauncherExecutable: `$Bench.JRE8:Path$\javaw.exe`
* LauncherArguments: `-jar`, `$:Exe$`

### TeXnicCenter

Premium LaTeX Editing for Windows.

* ID: `Bench.TeXnicCenter`
* Tags:
    + gui
    + writing
    + latex
* Dependencies: `Bench.MiKTeX`
* Website: <http://www.texniccenter.org>
* License: GPL-2.0
* Docs:
    + Features: <http://www.texniccenter.org/about/feature/>
    + Documentation: <http://texniccenter.sourceforge.net/>
* Version: 2.02
* Url: `https://sourceforge.net/projects/texniccenter/files/TeXnicCenter/$:Version$%20Stable/$:ArchiveName$`
* ArchiveName: `TXCSetup_$:Version$Stable_Win32.exe`
* ArchiveTyp: `inno`
* RegistryKeys: `SOFTWARE\ToolsCenter`
* Launcher: $:Label$

### Scribus

Scribus is a page layout program, available for a lot of operating systems.
Since its humble beginning in the spring of 2001, Scribus has evolved into
one of the premier Open Source desktop applications.

* ID: `Bench.Scribus`
* Tags:
    + gui
    + graphics
    + layout
    + dtp
    + writing
* Website: <https://www.scribus.net/>
* License: GPL-2.0
* Docs:
    + Wiki: <https://wiki.scribus.net/canvas/Scribus>
    + Manual: <https://wiki.scribus.net/canvas/Help:TOC>
    + HowTo: <https://wiki.scribus.net/canvas/Category:HOWTO>
* Version: 1.4.7
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
* Tags:
    + cli
    + css
    + transpiler
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
* Tags:
    + cli
    + css
    + transpiler
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
* Tags:
    + cli
    + html
    + static website
    + markdown
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
* Version: 0.42.2
* Url: `https://github.com/gohugoio/hugo/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `hugo_$:Version$_windows-32bit.zip`
* ArchiveName64Bit: `hugo_$:Version$_windows-64bit.zip`

## Desktop

### MultiMonitorTool

Enable/disable/configure multiple monitors on Windows.

* ID: `Bench.MultiMonitorTool`
* Tags:
    + gui
    + desktop
* Website: <http://www.nirsoft.net/utils/multi_monitor_tool.html>
* Docs:
    + Help: `MultiMonitorTool.chm`
* License: Freeware
* Version: latest
* Url: `http://www.nirsoft.net/utils/$:ArchiveName$`
* ArchiveName32Bit: `multimonitortool.zip`
* ArchiveName64Bit: `multimonitortool-x64.zip`
* Launcher: $:Label$

## Multimedia

### ImageMagick

Use ImageMagick® to create, edit, compose, or convert bitmap images.
It can read and write images in a variety of formats (over 200)
including PNG, JPEG, GIF, HEIC, TIFF, DPX, EXR, WebP, Postscript, PDF, and SVG.
Use ImageMagick to resize, flip, mirror, rotate, distort, shear and transform images,
adjust image colors, apply various special effects,
or draw text, lines, polygons, ellipses and Bézier curves.

* ID: `Bench.ImageMagick`
* Tags:
    + cli
    + im
    + magick
    + graphics
* Website: <https://www.imagemagick.org/>
* Docs:
    + Lokale Website: `$:Dir$\www\index.html`
    + Command Line: `$:Dir$\www\command-line-processing.html`
* Version: 7.0.8-6
* License: GPL-3.0 compatible
* LicenseUrl: <https://www.imagemagick.org/script/license.php>
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `ImageMagick-$:Version$-portable-Q16-x86.zip`
* ArchiveName64Bit: `ImageMagick-$:Version$-portable-Q16-x64.zip`
* Exe: `magick.exe`
* IncludeCompatibilityTools: `false`

### Graphics Magick

GraphicsMagick is the swiss army knife of image processing. It provides a robust
and efficient collection of tools and libraries which support reading, writing,
and manipulating an image in over 88 major formats including important formats
like DPX, GIF, JPEG, JPEG-2000, PNG, PDF, PNM, and TIFF.

* ID: `Bench.GraphicsMagick`
* Tags:
    + cli
    + gm
    + graphics
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
* Version: 1.3.30
* Url: `https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `GraphicsMagick-$:Version$-Q16-win32-dll.exe`
* ArchiveName64Bit: `GraphicsMagick-$:Version$-Q16-win64-dll.exe`
* ArchiveTyp: `inno`
* Dir: `bench\gm`
* Exe: `gm.exe`

### FFmpeg

FFmpeg is the leading multimedia framework, able to decode, encode, transcode,
mux, demux, stream, filter and play pretty much anything that humans and machines have created.
It supports the most obscure ancient formats up to the cutting edge.
No matter if they were designed by some standards committee, the community or a corporation.

* ID: `Bench.FFmpeg`
* Tags:
    + cli
    + video
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
* Url32Bit: `http://ffmpeg.zeranoe.com/builds/win32/shared/$:ArchiveName$`
* Url64Bit: `http://ffmpeg.zeranoe.com/builds/win64/shared/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath32Bit: `ffmpeg-$:Version$-win32-shared`
* ArchivePath64Bit: `ffmpeg-$:Version$-win64-shared`
* Path: `bin`
* Exe: `bin\ffmpeg.exe`

### SoX

SoX is a cross-platform command line utility that can convert
various formats of computer audio files in to other formats.
It can also apply various effects to these sound files,
and, as an added bonus, SoX can play and record audio files on most platforms.

* ID: `Bench.SoX`
* Tags:
    + cli
    + audio
* Website: <http://sox.sourceforge.net/>
* License: GPL-2.0
* Docs:
    + Documentation: <http://sox.sourceforge.net/Docs/Documentation>
    + CLI sox: <http://sox.sourceforge.net/sox.html>
    + CLI soxi: <http://sox.sourceforge.net/soxi.html>
* Version: 14.4.2
* Url: `https://sourceforge.net/projects/sox/files/sox/$:Version$/$:ArchiveName$`
* ArchiveName: `sox-$:Version$-win32.zip`
* ArchivePath: `sox-$:Version$`
* Path: `cmd`
* Exe: `$:Path$\sox.cmd`

### HandBrake CLI

The command line interface for the open source video transcoder.

* ID: `Bench.HandBrakeCLI`
* Tags:
    + cli
    + video
    + compression
* Website: <https://handbrake.fr>
* License: GPL-2.0
* Version: 1.1.1
* Url: `https://download.handbrake.fr/releases/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `HandBrakeCLI-$:Version$-win-i686.zip`
* ArchiveName64Bit: `HandBrakeCLI-$:Version$-win-x86_64.zip`
* Dir: `bench\handbrake`
* Exe: `HandBrakeCLI.exe`

### HandBrake

The open source video transcoder.

* ID: `Bench.HandBrake`
* Tags:
    + gui
    + video
    + compression
* Website: <https://handbrake.fr>
* License: GPL-2.0
* Version: 1.1.1
* Url: `https://download.handbrake.fr/releases/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `HandBrake-$:Version$-i686-Win_GUI.exe`
* ArchiveName64Bit: `HandBrake-$:Version$-x86_64-Win_GUI.exe`
* Exe: `HandBrake.exe`
* Launcher: $:Label$

### YouTubeDL

youtube-dl is a command-line program to download videos from YouTube.com and other sites.

* ID: `Bench.YouTubeDL`
* Tags:
    + cli
    + video
    + downloader
* Website: <https://rg3.github.io/youtube-dl/>
* License: Unlicense
* LicenseUrl: <https://raw.githubusercontent.com/rg3/youtube-dl/master/LICENSE>
* Docs:
    + Supported Sites: <https://rg3.github.io/youtube-dl/supportedsites.html>
    + CLI: <https://github.com/rg3/youtube-dl/blob/master/README.md#description>
* Typ: `python-package`
* PackageName: `youtube_dl`

### VLC

VLC is a free and open source cross-platform multimedia player and framework
that plays most multimedia files, and various streaming protocols.

* ID: `Bench.VLC`
* Tags:
    + gui
    + audio
    + video
    + player
    + videolan
* Label: VLC Player
* Website: <http://www.videolan.org/vlc/>
* License: GPL-2.0
* Docs:
    + Features: <http://www.videolan.org/vlc/features.html>
    + Skins: <http://www.videolan.org/vlc/skins.html>
* Version: 3.0.3
* Url32Bit: `http://get.videolan.org/vlc/$:Version$/win32/$:ArchiveName32Bit$`
* Url64Bit: `http://get.videolan.org/vlc/$:Version$/win64/$:ArchiveName64Bit$`
* ArchiveName32Bit: `vlc-$:Version$-win32.7z`
* ArchiveName64Bit: `vlc-$:Version$-win64.7z`
* ArchivePath: `vlc-$:Version$`
* Launcher: $:Label$

### Graphviz

Graphviz is open source graph visualization software.
Graph visualization is a way of representing structural information as diagrams
of abstract graphs and networks. It has important applications in networking,
bioinformatics,  software engineering, database and web design, machine learning,
and in visual interfaces for other technical domains.

* ID: `Bench.Graphviz`
* Tags:
    + cli
    + graphics
    + diagram
    + dot
    + compiler
    + graph
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
* Url:`https://graphviz.gitlab.io/_pages/Download/windows/$:ArchiveName$`
* ArchiveName: `graphviz-$:Version$.zip`
* ArchivePath: `release`
* Path: `bin`
* Exe: `bin\dot.exe`
* Environment:
    + `GRAPHVIZ_DOT`: `$:Exe$`

### PlantUML

PlantUML allows to define UML diagrams with text files in a simple and intuitive language.

* ID: `Bench.PlantUML`
* Tags:
    + cli
    + graphics
    + uml
    + diagram
    + compiler
* Dependencies: `Bench.JRE`, `Bench.Graphviz`, `Bench.ImageMagick`
* Website: <http://plantuml.com>
* License: GPL-3.0
* Docs:
    + Language Specification: <http://plantuml.com/sitemap-language-specification>
    + Language Reference: <http://plantuml.com/PlantUML_Language_Reference_Guide.pdf>
    + Command Line: <http://plantuml.com/command-line>
    + Advanced Usage: <http://plantuml.com/sitemap-advanced-usage>
* Version: latest
* Url: `https://sourceforge.net/projects/plantuml/files/$:ResourceName$`
* ResourceName: `plantuml.jar`
* Exe: `plantuml.bat`
* Launcher: $:Label$
* LauncherExecutable: `plantuml-gui.bat`
* LauncherIcon: `logo.ico`

### Gephi

Gephi is the leading visualization and exploration software for all kinds of graphs and networks.
Gephi is open-source and free.

* ID: `Bench.Gephi`
* Tags:
    + gui
    + graph
    + data science
* Dependencies: `Bench.JRE`
* Website: <https://gephi.org>
* License: GPL-3.0
* Docs:
    + Features: <https://gephi.org/features/>
    + Quick Start: <https://gephi.org/users/quick-start/>
    + Supported Formats: <https://gephi.org/users/supported-graph-formats/>
    + Developers: <https://gephi.org/developers/>
* Version: 0.9.2
* Url: `https://github.com/gephi/gephi/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `gephi-$:Version$-windows.exe`
* ArchiveTyp: `inno`
* Register: `false`
* Exe32Bit: `bin\gephi.exe`
* Exe64Bit: `bin\gephi64.exe`
* Launcher: $:Label$
* LauncherArguments: `--jdkhome`, `$Bench.JRE:Dir$`

### Dia

Dia is a program to draw structured diagrams.

* ID: `Bench.Dia`
* Tags:
    + gui
    + graphics
    + diagram
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
* Tags:
    + gui
    + graphics
    + vector
* Website: <https://inkscape.org/>
* License: GPL-2.0
* LicenseUrl: <https://inkscape.org/en/about/license/>
* Docs:
    + Manual: <http://tavmjong.free.fr/INKSCAPE/MANUAL/html/>
    + Tutorials: <https://inkscape.org/en/learn/tutorials/>
    + FAQ: <https://inkscape.org/en/learn/faq/>
    + Command Line Reference: <https://inkscape.org/en/doc/inkscape-man.html>
    + Keyboard Shortcuts: <https://inkscape.org/en/doc/keys091.html>
* Version: 0.92.3
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `Inkscape-$:Version$.7z`
* ArchiveName64Bit: `Inkscape-$:Version$-x64.7z`
* ArchivePath: `inkscape`
* Exe: `inkscape.exe`
* Launcher: $:Label$

### GIMP

The GNU Image Manipulation Program.

GIMP is a cross-platform image editor.
Whether you are a graphic designer, photographer, illustrator, or scientist,
GIMP provides you with sophisticated tools to get your job done.

* ID: `Bench.Gimp`
* Tags:
    + gui
    + graphics
    + bitmap
    + photo
* Label: GIMP
* Website: <http://www.gimp.org/>
* License: GPL-3.0
* LicenseUrl: <https://git.gnome.org/browse/gimp/plain/COPYING>
* Docs:
    + Manual: <http://docs.gimp.org/2.8/en/>
    + Tutorials: <http://www.gimp.org/tutorials/>
* MajorVersion: 2.10
* Version: $:MajorVersion$.2
* Url: `https://sourceforge.net/projects/portableapps/files/GIMP Portable/$:ArchiveName$`
* ArchiveName: `GIMPPortable_$:Version$.paf.exe`
* ArchivePath: `App/gimp`
* Exe: `bin\gimp-$:MajorVersion$.exe`
* Register: `false`
* Launcher: $:Label$

### XnView

XnView is an efficient multimedia viewer, browser and converter.
Really simple to use!
Support of more than 500 image formats.

* ID: `Bench.XnView`
* Tags:
    + gui
    + photo
    + graphics
    + viewer
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
* Tags:
    + cli
    + photo
* Website: <http://www.sno.phy.queensu.ca/~phil/exiftool/>
* License: GPL, Artistic
* LicenseUrl: <http://www.sno.phy.queensu.ca/~phil/exiftool/#license>
* Docs:
    + Documentation: <http://www.sno.phy.queensu.ca/~phil/exiftool/exiftool_pod.html>
* Version: 11.05
* Url: `http://www.sno.phy.queensu.ca/~phil/exiftool/$:ArchiveName$`
* ArchiveName: `exiftool-$:Version$.zip`

### LMMS

Open source digital audio workstation with VST support.

* ID: `Bench.LMMS`
* Tags:
    + gui
    + daw
    + audio
    + midi
    + vst
* Website: <https://lmms.io/>
* License: GPL-2.0
* Version: 1.1.3
* Url: `https://github.com/LMMS/lmms/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `lmms-$:Version$-win32.exe`
* ArchiveName64Bit: `lmms-$:Version$-win64.exe`
* Register: `false`
* Launcher: $:Label$

### SonicPI

The Live Coding Music Synth for Everyone.

Simple enough for computing and music lessons.  
Powerful enough for professional musicians.

* ID: `Bench.SonicPI`
* Tags:
    + gui
    + music
    + audio
    + ruby
* Website: <http://sonic-pi.net/>
* License: MIT
* LicenseUrl: <https://github.com/samaaron/sonic-pi/blob/master/LICENSE.md>
* Version: 3.1.0
* Url: `http://sonic-pi.net/files/releases/v$:Version$/$:ArchiveName$`
* ArchiveName: `Sonic-Pi-for-Win-Portable-v$:Version$.paf.exe`
* ArchivePath: `App\Sonic Pi`
* Exe: `app\gui\qt\release\sonic-pi.exe`
* Register: `false`
* RegistryKeys: `Software\sonic-pi.net`
* Launcher: $:Label$

### CamStudio Screen Recorder

CamStudio is a great tool to create quick demos and screencasts on your computer
in AVI and, if you wish, you can convert them into Flash format.

CamStudio's features include options to highlight the cursor path during a
recording session, automatic panning, and the ability to record with sound.

An effects menu lets you annotate and append videos with comments,
plus add a time stamp or watermark. CamStudio also captures screenshots
if you set the frame rate, drag the mouse over the area for capture,
and tap on the coordinates.

* ID: `Bench.CamStudio`
* Tags:
    + gui
    + desktop
    + video
    + recording
* Label: CamStudio Screen Recorder
* Website: <http://camstudio.org/>
* License: GPL-3.0
* Version: 2.7
* Release: 2-7_r316
* Url: `https://sourceforge.net/projects/camstudio/files/stable/CamStudio_Setup_2-7_r316.exe`
* ArchiveName: `CamStudio_Setup_$:Release$.exe`
* ArchiveTyp: `inno`
* Exe: `Recorder.exe`
* Register: `false`
* Launcher: $:Label$

### Open Broadcaster Software

Free and open source software for video recording and live streaming.

* ID: `Bench.OBS`
* Tags:
    + gui
    + desktop
    + video
    + recording
    + streaming
* Label: OBS Studio
* Website: <https://obsproject.com>
* Docs:
    + Help: <https://obsproject.com/help>
* License: GPL-2.0
* LicenseUrl: <https://github.com/jp9000/obs-studio/blob/master/COPYING>
* Version: 21.1.2
* Url: `https://github.com/jp9000/obs-studio/releases/download/$:Version$/$:ArchiveName$`
* ArchiveName: `OBS-Studio-$:Version$-Full.zip`
* Path32Bit: `bin\32Bit`
* Path64Bit: `bin\64Bit`
* Exe32Bit: `bin\32Bit\obs32.exe`
* Exe64Bit: `bin\64Bit\obs64.exe`
* Launcher: $:Label$
* LauncherWorkingDir: `$:Path$`

### Avidemux

Avidemux is a free video editor designed for simple cutting, filtering and encoding tasks.
It supports many file types, including AVI, DVD compatible MPEG files, MP4 and ASF, using a variety of codecs.
Tasks can be automated using projects, job queue and powerful scripting capabilities.

* ID: `Bench.Avidemux`
* Tags:
    + gui
    + video
* Website: <http://avidemux.sourceforge.net/>
* Docs:
    + Documentation: <http://www.avidemux.org/admWiki/doku.php?id=build:doctop>
* License: GPL-2.0
* Version: 2.7.1
* Url: `https://sourceforge.net/projects/avidemux/files/avidemux/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `avidemux_$:Version$_win32.exe`
* ArchiveName64Bit: `avidemux_$:Version$_win64.exe`
* Launcher: $:Label$

### OpenShot

We designed OpenShot Video Editor to be an easy to use, quick to learn, and surprisingly powerful video editor.

* ID: `Bench.OpenShot`
* Tags:
    + gui
    + video
* Website: <https://www.openshot.org>
* License: GPL-3.0
* Version: 2.4.2
* Only64Bit: true
* Url: `https://github.com/OpenShot/openshot-qt/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `OpenShot-v$:Version$-x86_64.exe`
* ArchiveTyp: `inno`
* Register: false
* Exe: `launch.exe`
* Launcher: $:Label$

## 3D Modeling

### MeshLab

MeshLab is an open source, portable, and extensible system for the processing
and editing of unstructured 3D triangular meshes.
The system is aimed to help the processing of the typical not-so-small
unstructured models arising in 3D scanning, providing a set of tools for editing,
cleaning, healing, inspecting, rendering and converting this kind of meshes.

* ID: `Bench.MeshLab`
* Tags:
    + gui
    + 3d
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
* Tags:
    + gui
    + 3d
    + video
    + audio
    + python
* Website: <https://www.blender.org>
* License: GPL-3.0
* LicenseUrl: <https://www.blender.org/about/license/>
* Docs:
    + Features: <https://www.blender.org/features/>
    + Tutorials: <https://www.blender.org/support/tutorials/>
    + Manual: <https://www.blender.org/manual/>
    + Python API: <https://docs.blender.org/api/blender_python_api_2_79_release/>
* Version: 2.79
* VersionSuffix: `b`
* Url: `http://download.blender.org/release/Blender$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath32Bit: `blender-$:Version$$:VersionSuffix$-windows32`
* ArchivePath64Bit: `blender-$:Version$$:VersionSuffix$-windows64`
* Launcher: $:Label$

### FreeCAD

* ID: `Bench.FreeCAD`
* Tags:
    + gui
    + 3d
    + cad
    + python
* Version: 0.17
* Release: $:Version$.13522.3bb5ff4
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
* ArchiveName: `$:ArchivePath$.7z`
* ArchivePath32Bit: `FreeCAD-$:Release$-WIN-x86-portable`
* ArchivePath64Bit: `FreeCAD-$:Release$-WIN-x64-portable`
* Exe: `bin\freecad.exe`
* Launcher: $:Label$
