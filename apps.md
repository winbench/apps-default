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
    + `Bench.VSCode`

### Java Development

* ID: `Bench.Group.JavaDevelopment`
* Label: Java Development
* Typ: `group`
* Dependencies:
    + `Bench.JDK8`
    + `Bench.JDK`
    + `Bench.Maven`
    + `Bench.EclipseJava`

### Clojure Development

* ID: `Bench.Group.ClojureDevelopment`
* Label: Clojure Development
* Typ: `group`
* Dependencies:
    + `Bench.JDK8`
    + `Bench.JDK`
    + `Bench.Maven`
    + `Bench.ClojureTools`
    + `Bench.Leiningen`

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

### Python 3 Development

* ID: `Bench.Group.Python3Development`
* Label: Python 3 Development
* Typ: `group`
* Dependencies:
    + `Bench.Python3`
    + `Bench.Pipenv`
    + `Bench.Twine`
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
    + `Bench.Python3.FastParquet`
    + `Bench.Python3.Spyder`
    + `Bench.Python.Matplotlib`
    + `Bench.Python.Seaborn`
    + `Bench.SublimeText`
    + `Bench.R`
    + `Bench.RStudio`
    + `Bench.Python.Dbt`
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
    + Overview: <https://www.openssl.org/docs/man1.1.1/>
    + Commands: <https://www.openssl.org/docs/man1.1.1/man1/>
    + Windows Builds: <https://bintray.com/vszakats/generic/openssl>
* VersionMajor: 1
* VersionMinor: 1
* Revision: 1g
* Version: `$:VersionMajor$.$:VersionMinor$.$:Revision$`
* Url: `https://bintray.com/vszakats/generic/download_file?file_path=$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath32Bit: `openssl-$:Version$-win32-mingw`
* ArchivePath64Bit: `openssl-$:Version$-win64-mingw`
* Exe: `openssl.exe`
* VersionCheckUrl: <https://bintray.com/vszakats/generic/openssl/_latestVersion>
* VersionCheckXPath: `//span[@class='crumb']/a`
* VersionCheckPattern: `(?<Version>[\d\.]+[a-z]?)`

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
* VersionMajor: 3
* VersionMinor: 7
* Revision: 9
* Version: `$:VersionMajor$.$:VersionMinor$.$:Revision$`
* Release: `$:VersionMajor$_$:VersionMinor$_$:Revision$`
* Url: `https://www.gnupg.org/ftp/gcrypt/gnutls/v$:VersionMajor$.$:VersionMinor$/$:ArchiveName$`
* ArchiveName32Bit: `gnutls-$:Version$-w32.zip`
* ArchiveName64Bit: `gnutls-$:Version$-w64.zip`
* ArchivePath32Bit: `win32-build`
* ArchivePath64Bit: `win64-build`
* Dir: `bench\gnu`
* Path: `bin`
* Exe: `bin\gnutls-cli.exe`
* VersionCheckUrl: <https://www.gnutls.org/download.html>
* VersionCheckXPath: `//table[@class='news']/descendant::tr/td/a`
* VersionCheckPattern: `^gnutls_(?<Version>[\d_]+)\:mingw32`
* VersionCheckString: `$:Release$`

### GnuPG

GnuPG is a complete and free implementation of the OpenPGP standard as defined by RFC4880 (also known as PGP).
GnuPG allows to encrypt and sign your data and communication, features a versatile key management system
as well as access modules for all kinds of public key directories.
GnuPG, also known as GPG, is a command line tool with features for easy integration with other applications.

* ID: `Bench.GnuPG`
* Tags:
    + pgp
    + cryptography
    + signature
    + email
    + cli
* Website: <https://gnupg.org>
* License: GPL-3.0
* Docs:
    + Manual: <https://gnupg.org/documentation/manuals/gnupg-2.0/>
    + Commands: <https://gnupg.org/documentation/manuals/gnupg-2.0/Operational-GPG-Commands.html>
* Version: 2.2.23
* Url: `https://sourceforge.net/projects/portableapps/files/GPG Plugin Portable/$:ArchiveName$`
* ArchiveName: `GPG_Plugin_Portable_$:Version$.paf.exe`
* Dir: `bench\gpg`
* Path: `bin`
* Exe: `bin\gpg.exe`
* VersionCheckUrl: <https://sourceforge.net/projects/portableapps/files/GPG%20Plugin%20Portable/>
* VersionCheckXPath: `/html/body/descendant::div[@id='files']/table/descendant::tr/th/a`
* VersionCheckPattern: `GPG_Plugin_Portable_(?<Version>[\d\.]+)\.paf\.exe`

### Minisign

Minisign is a dead simple tool to sign files and verify signatures.
It is portable, lightweight, and uses the highly secure Ed25519 public-key signature system.

* ID: `Bench.Minisign`
* Tags:
    + cli
    + cryptography
    + signature
* Website: <https://jedisct1.github.io/minisign/>
* License: ISC
* LicenseUrl: <https://github.com/jedisct1/minisign/blob/master/LICENSE>
* Version: 0.12
* Url: `https://github.com/jedisct1/minisign/releases/download/$:Version$/$:ArchiveName$`
* ArchiveName: `minisign-$:Version$-win64.zip`
* ArchivePath: `minisign-win64\x86_64`
* Only64Bit: `true`

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
* Launcher: `$:Label$`

## Version Control

### Sublime Merge

The Git client from the makers of Sublime Text.
A snappy UI, three-way merge tool, side-by-side diffs, syntax highlighting, and more.

* ID: `Bench.SublimeMerge`
* Label: Sublime Merge
* Tags:
    + gui
    + python
    + git
    + version control
    + folder editor
* Website: <http://www.sublimemerge.com>
* License: Commercial
* Docs:
    + News: <https://www.sublimetext.com/blog/>
* Version: 2102
* Url: `https://download.sublimetext.com/$:ArchiveName$`
* Only64Bit: true
* ArchiveName64Bit: `sublime_merge_build_$:Version$_x64.zip`
* Exe: `sublime_merge.exe`
* Launcher: `$:Label$`
* DataDir: `$AppDataDir$\Sublime Merge`
* VersionCheckUrl: <https://www.sublimemerge.com/>
* VersionCheckXPath: `//div[contains(@class, 'download')]/div/span[contains(@class, 'win')]@href`
* VersionCheckPattern: `sublime_merge_build_(?<Version>\d+)`

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
* Launcher: `$:Label$`

## Languages and Platforms

### Perl

Perl is a highly capable, feature-rich programming language with over 30 years of development.

* ID: `Bench.Perl`
* Tags:
    + language
    + cli
* Website: <https://www.perl.org/>
* Docs:
    + Lern Perl: <https://www.perl.org/learn.html>
    + Documentation: <https://perldoc.perl.org/>
* Version: 5.32.1.1
* Url: `https://strawberryperl.com/download/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `strawberry-perl-$:Version$-32bit-portable.zip`
* ArchiveName64Bit: `strawberry-perl-$:Version$-64bit-portable.zip`
* Path: `perl\bin`
* Exe: `perl\bin\perl.exe`

### SysGCC for MinGW32

Prebuilt Windows Toolchain for MinGW32

* ID: `Bench.SysGCC.MinGW32`
* Label: SysGCC MinGW32
* Tags:
    + language
    + cli
* Version: 9.1.0
* Url: `https://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName: `SysGCC_MinGW32_$:Version$.7z`
* Dir: `bench\sysgcc32`
* Exe: `bin\gcc.exe`
* Path: `bin`
* Register: `true`

### SysGCC for MinGW64

Prebuilt Windows Toolchain for MinGW64

* ID: `Bench.SysGCC.MinGW64`
* Label: SysGCC MinGW64
* Tags:
    + language
    + cli
* Version: 9.1.0
* Url: `https://down1.mastersign.de/bench/$:ArchiveName$`
* Only64Bit: `true`
* ArchiveName: `SysGCC_MinGW64_$:Version$.7z`
* Dir: `bench\sysgcc64`
* Exe: `bin\gcc.exe`
* Path: `bin`
* Register: `true`
* 
### SysGCC for Ubuntu

Prebuilt Windows Toolchain for Ubuntu

* ID: `Bench.SysGCC.Ubuntu`
* Label: SysGCC Ubuntu
* Tags:
    + language
    + cli
* Version: 9.3.0
* Url: `https://down1.mastersign.de/bench/$:ArchiveName$`
* Only64Bit: `true`
* ArchiveName: `SysGCC_Ubuntu_$:Version$.7z`
* Dir: `bench\sysgcc_ubuntu`
* Exe: `bin\x86_64-linux-gnu-gcc.exe`
* Path: `bin`
* Register: `false`

### SysGCC for Raspberry PI

Prebuilt Windows Toolchain for Raspberry PI

* ID: `Bench.SysGCC.Raspberry`
* Label: SysGCC Raspberry
* Tags:
    + language
    + cli
* Version: 10.2.1
* Url: `https://down1.mastersign.de/bench/$:ArchiveName$`
* Only64Bit: `true`
* ArchiveName: `SysGCC_Raspberry_$:Version$.7z`
* Dir: `bench\sysgcc_rpi`
* Exe: `bin\arm-linux-gnueabihf-gcc.exe`
* Path: `bin`
* Register: `false`

### Rust

* ID: `Bench.Rust`
* Tags:
    + language
    + cli
* Url: `https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-gnu/rustup-init.exe`
* ResourceName: `rustup-init.exe`
* Path: `$HomeDir$\.cargo\bin`
* Exe: `$HomeDir$\.cargo\bin\cargo.exe`

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
* Version: 5.6.40
* Url: `https://windows.php.net/downloads/releases/archives/$:ArchiveName$`
* ArchiveName32Bit: `php-$:Version$-Win32-VC11-x86.zip`
* ArchiveName64Bit: `php-$:Version$-Win32-VC11-x64.zip`
* DownloadHeaders:
    + `User-Agent`: `Bench`
* Exe: `php.exe`
* Extensions: `php_curl`, `php_fileinfo`, `php_imap`, `php_mbstring`, `php_mysql`, `php_mysqli`, `php_openssl`, `php_pdo_mysql`, `php_pdo_pgsql`, `php_pdo_sqlite`, `php_pgsql`, `php_sqlite3`, `php_soap`
* VersionCheckUrl: <https://windows.php.net/downloads/releases/archives/>
* VersionCheckXPath: `//a`
* VersionCheckPattern: `php-(?<Version>5\.[\d\.]+)-Win32-VC\d+-x86\.zip`

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
* Version: 7.3.21
* Url: `http://windows.php.net/downloads/releases/archives/$:ArchiveName$`
* ArchiveName32Bit: `php-$:Version$-Win32-VC15-x86.zip`
* ArchiveName64Bit: `php-$:Version$-Win32-VC15-x64.zip`
* DownloadHeaders:
    + `User-Agent`: `Bench`
* Exe: `php.exe`
* Extensions: `curl`, `fileinfo`, `imap`, `mbstring`, `mysqli`, `openssl`, `pdo_mysql`, `pdo_pgsql`, `pdo_sqlite`, `pgsql`, `sqlite3`, `soap`
* VersionCheckUrl: <https://windows.php.net/downloads/releases/archives/>
* VersionCheckXPath: `//a`
* VersionCheckPattern: `php-(?<Version>7\.[\d\.]+)-Win32-VC\d+-x86\.zip`

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
* LicenseUrl: <https://www.oracle.com/technetwork/java/javase/terms/license/index.html>
* Docs:
    + Downloads: <https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>
* Version: 202
* Release: b08
* Url: `https://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName32Bit: `jre-8u$:Version$-windows-i586.tar.gz`
* ArchiveName64Bit: `jre-8u$:Version$-windows-x64.tar.gz`
* ArchivePath: `jre1.8.0_$:Version$`
* Path: `bin`
* Exe: `bin\java.exe`
* Environment:
    + `JAVA_CMD`: `$:Exe$`

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

### Open JRE 8

According to Oracle, Java is the world's #1 programming language.

The runtime environment is required for a compiled Java program to get executed.

* ID: `Bench.OpenJRE8`
* Label: OpenJRE 8
* Tags:
    + language
    + runtime
    + cli
    + jvm
* Website: <https://www.oracle.com/java/>
* License: GPL-2
* LicenseUrl: <https://openjdk.java.net/legal/gplv2+ce.html>
* Docs:
    + Build Project: <https://github.com/ojdkbuild/ojdkbuild>
    + Downloads: <https://github.com/ojdkbuild/ojdkbuild/releases>
* Version: `$Bench.JDK8:Version$`
* Release: `$Bench.JDK8:Release$`
* Url64Bit: `https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-$:Version$-$:Release$/$:ArchiveName$`
* Url32Bit: `https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-$:Version$-$:Release$-x86/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath64Bit: `java-1.8.0-openjdk-jre-$:Version$-$:Release$.ojdkbuild.windows.x86_64`
* ArchivePath32Bit: `java-1.8.0-openjdk-jre-$:Version$-$:Release$.ojdkbuild.windows.x86`
* Path: `bin`
* Exe: `bin\java.exe`
* Environment:
    + `JAVA_HOME`: `$:Dir$`
    + `JAVA_CMD`: `$:Exe$`

### Open JDK 8

According to Oracle, Java is the world's #1 programming language.

The Java development kit is required for compiling Java sources into an executable program.

A significant number of Java libraries are not compatible with the JDK 9 and greater.
Therefore, the JDK 8 is made available as an alternative.
Open JDK 8 is also the last JDK to support 32 Bit Windows as a developer machine.

* ID: `Bench.JDK8`
* Label: OpenJDK 8
* Tags:
    + cli
    + language
    + runtime
    + compiler
    + sdk
    + jvm
    + jre
* Website: <https://jdk.java.net/>
* License: GPL-2
* LicenseUrl: <https://openjdk.java.net/legal/gplv2+ce.html>
* Docs:
    + Build Project: <https://github.com/ojdkbuild/ojdkbuild>
    + Downloads: <https://github.com/ojdkbuild/ojdkbuild/releases>
* Version: 1.8.0.265
* Release: 1.b01
* Url64Bit: `https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-$:Version$-$:Release$/$:ArchiveName$`
* Url32Bit: `https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-$:Version$-$:Release$-x86/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath64Bit: `java-1.8.0-openjdk-$:Version$-$:Release$.ojdkbuild.windows.x86_64`
* ArchivePath32Bit: `java-1.8.0-openjdk-$:Version$-$:Release$.ojdkbuild.windows.x86`
* Path: `bin`
* Exe: `bin\java.exe`
* Environment:
    + `JAVA_HOME`: `$:Dir$`
    + `JAVA_CMD`: `$:Exe$`

### Open JFX 8

* ID: `Bench.JFX8`
* Dependencies:
    + `Bench.JDK8`
* Label: OpenJFX SDK 8
* Website: <https://openjfx.io/>
* Docs:
    + API: `https://docs.oracle.com/javase/8/javafx/api/toc.htm`
* Version: 8.0.202
* Release: 1.b14
* Url64Bit: `https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-$Bench.JDK8:Version$-$Bench.JDK8:Release$/$:ArchiveName$`
* Url32Bit: `https://github.com/ojdkbuild/ojdkbuild/releases/download/java-1.8.0-openjdk-$Bench.JDK8:Version$-$Bench.JDK8:Release$-x86/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath64Bit: `openjfx-$:Version$-$:Release$.ojdkbuild.windows.x86_64`
* ArchivePath32Bit: `openjfx-$:Version$-$:Release$.ojdkbuild.windows.x86`
* Dir: `$Bench.JDK8:Dir$`
* ModulePath: `$:Dir$\lib`
* SetupTestFile: `$:ModulePath$\ant-javafx.jar`
* Environment:
    + `PATH_TO_FX`: `$:ModulePath$`
* Register: `false`

### Open JDK

According to Oracle, Java is the world's #1 programming language.

* ID: `Bench.JDK`
* Label: OpenJDK $:VersionMajor$
* Tags:
    + cli
    + language
    + runtime
    + compiler
    + sdk
    + jvm
    + jre
* Website: <https://jdk.java.net/>
* License: GPL-2
* LicenseUrl: <https://openjdk.java.net/legal/gplv2+ce.html>
* Docs:
    + Downloads: <https://jdk.java.net/archive/>
    + Microsoft Downloads: <https://learn.microsoft.com/en-us/java/openjdk/download>
* VersionMajor: 21
* Version: $:VersionMajor$.0.4
* Release: 7
* Only64Bit: `true`
* Url64Bit: `https://aka.ms/download-jdk/$:ArchiveName$`
* ArchiveName: `microsoft-jdk-$:Version$-windows-x64.zip`
* ArchivePath: `jdk-$:Version$+$:Release$`
* Path: `bin`
* Exe: `bin\java.exe`
* Environment:
    + `JAVA_HOME`: `$:Dir$`
    + `JAVA_CMD`: `$:Exe$`
* VersionCheckUrl: `https://jdk.java.net/$:VersionMajor$/`
* VersionCheckXPath: `//div[@id='openjdk']/descendant::table/descendant::td/a/@href`
* VersionCheckPattern: `jdk$:VersionMajor$/\d+/GPL/openjdk-(?<Version>[\d\.]+)_windows-x64_bin\.zip$`

### Open JFX

* ID: `Bench.JFX`
* Dependencies:
    + `Bench.JDK`
* Label: OpenJFX SDK $Bench.JDK:VersionMajor$
* Website: <https://openjfx.io/>
* Docs:
    + API: `https://openjfx.io/javadoc/$Bench.JDK:VersionMajor$/`
* Version: 21.0.4
* Url: `https://download2.gluonhq.com/openjfx/$:Version$/$:ArchiveName$`
* Only64Bit: `true`
* ArchiveName64Bit: `openjfx-$:Version$_windows-x64_bin-sdk.zip`
* ArchivePath: `javafx-sdk-$:Version$`
* Dir: `$Bench.JDK:Dir$`
* ModulePath: `$:Dir$\lib`
* SetupTestFile: `$:ModulePath$\javafx.base.jar`
* Environment:
    + `PATH_TO_FX`: `$:ModulePath$`
* Register: `false`

### Clojure Tools

Command line tools that can be used to start a Clojure repl,
use Clojure and Java libraries, and start Clojure programs.

**Hint:** The `clj`/`clojure` CLI is implemented as _PowerShell_ module,
and is therefore, only available in _Windows PowerShell_ or _PowerShell_.

* ID: `Bench.ClojureTools`
* Tags:
    + cli
    + clojure
    + project automation
* Dependencies: `Bench.JDK`
* Website: <https://clojure.org>
* License: EPL-1.0
* LicenseUrl: <https://github.com/clojure/tools.deps.alpha/raw/master/LICENSE>
* Docs:
    + Deps and CLI Guide: <https://clojure.org/guides/deps_and_cli>
    + Clojure Documentation: <http://clojure-doc.org/>
    + Clojure Reference: <http://clojure.org/reference/documentation>
    + Clojure API: <http://clojure.github.io/clojure/>
* Version: 1.11.1.1257
* Url: `https://download.clojure.org/install/$:ArchiveName$`
* ArchiveName: `clojure-tools-$:Version$.zip`
* ArchivePath: `ClojureTools`
* Dir: `$HomeDir$\Documents\WindowsPowerShell\Modules\ClojureTools`
* SetupTestFile: `$:Dir$\ClojureTools.psm1`
* Register: `false`

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
* Version: latest
* Url: <https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein.bat>
* ResourceName: `lein.bat`
* Dir: `bench\lein`
* Exe: `lein.bat`
* Environment:
    + `LEIN_JAR`: `$:Dir$\leiningen.jar`

### Bun

* ID: `Bench.Bun`
* Tags:
    + cli
    + language
    + runtime
    + interpreter
    + compiler
    + bundler
    + JavaScript
    + TypeScript
* Website: <https://bun.sh>
* License: MIT
* LicenseUrl: <https://bun.sh/docs/project/licensing>
* Docs:
    + Documentation: <https://bun.sh/docs>
* Version: 1.1.0
* Only64Bit: `true`
* Url64Bit: `https://github.com/oven-sh/bun/releases/download/bun-v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath: `bun-windows-x64`

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
* Launcher: `$:Label$`

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
* Version: 3.1.11
* SdkVersion: 3.1.405
* Website: <https://www.microsoft.com/net/core>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/dotnet/coreclr/master/LICENSE.TXT>
* Docs:
    + Docs: <https://docs.microsoft.com/dotnet/>
    + Getting Started: <https://docs.microsoft.com/dotnet/articles/core/index>
    + Welcome: <https://docs.microsoft.com/dotnet/articles/welcome>
    + API Reference: <https://docs.microsoft.com/dotnet/core/api/index>
    + Downloads: <https://dotnet.microsoft.com/download>
* Url64Bit: `https://download.visualstudio.microsoft.com/download/pr/71f91ba2-a266-40c9-b173-ae1ecb9ba557/17981e2b3f6b7d8d288729eb77da550f/dotnet-sdk-3.1.405-win-x64.zip`
* Url32Bit: `https://download.visualstudio.microsoft.com/download/pr/dc01b27e-52f6-40a8-a122-d4a16559c560/24290702cd5618eed5612f7b6493d0a1/dotnet-sdk-3.1.405-win-x86.zip`
* ArchiveName32Bit: `dotnet-sdk-$:SdkVersion$-win-x86.zip`
* ArchiveName64Bit: `dotnet-sdk-$:SdkVersion$-win-x64.zip`
* Exe: `dotnet.exe`
* VersionCheckUrl: <https://dotnet.microsoft.com/download/dotnet-core>
* VersionCheckXPath: `//table/descendant::tr/td`
* VersionCheckPattern: `^(?<Version>\d+\.[\d\.]+)$`
* Tools:
    + `dotnet-ef`

### .NET SDK

The build tools and compilers for platform independent .NET applications.

* ID: `Bench.DotNetSdk`
* Label: .NET SDK
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
* Version: 8.0.3
* SdkVersion: 8.0.203
* Website: <https://dotnet.microsoft.com/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/dotnet/core/master/LICENSE.TXT>
* Docs:
    + Docs: <https://docs.microsoft.com/dotnet/>
    + Getting Started: <https://docs.microsoft.com/dotnet/articles/core/index>
    + Welcome: <https://docs.microsoft.com/dotnet/articles/welcome>
    + API Reference: <https://docs.microsoft.com/de-de/dotnet/api/>
    + Downloads: <https://dotnet.microsoft.com/download>
* Url64Bit: `https://download.visualstudio.microsoft.com/download/pr/48a48c8c-911f-45f0-ba75-900c093ed7fc/610cf5bc0a3c4a70b4b3b9478c22b03f/dotnet-sdk-8.0.203-win-x64.zip`
* Url32Bit: `https://download.visualstudio.microsoft.com/download/pr/5d954b58-6593-4e03-8993-305a072a4a50/ca4895ef8bb22ef6067ae1375197b60d/dotnet-sdk-8.0.203-win-x86.zip`
* ArchiveName32Bit: `dotnet-sdk-$:SdkVersion$-win-x86.zip`
* ArchiveName64Bit: `dotnet-sdk-$:SdkVersion$-win-x64.zip`
* Exe: `dotnet.exe`
* VersionCheckUrl: <https://dotnet.microsoft.com/download/dotnet/>
* VersionCheckXPath: `//table/descendant::tr/td`
* VersionCheckPattern: `^(?<Version>\d+\.[\d\.]+)$`
* Tools:
    + `dotnet-ef`
    + `dotnet-aspnet-codegenerator`

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
* VersionCheckUrl: <https://sourceforge.net/projects/mingw/files/Installer/mingw-get/>
* VersionCheckXPath: `/html/body/descendant::div[@id='files']/table/descendant::tr/th/a`
* VersionCheckPattern: `mingw-get-(?<Version>[\d\.]+)`

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
* Version: 12.0.0
* Website: <http://clang.llvm.org/>
* License: UoI-NCSA
* LicenseUrl: <https://opensource.org/licenses/UoI-NCSA.php>
* Url: `https://github.com/llvm/llvm-project/releases/download/llvmorg-$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `LLVM-$:Version$-win32.exe`
* ArchiveName64Bit: `LLVM-$:Version$-win64.exe`
* Dir: `bench\llvm`
* Path: `bin`
* Exe: `bin\clang.exe`
* Environment:
    + `CC`: `$:Dir$\bin\clang.exe`
    + `CXX`: `$:Dir$\bin\clang++.exe`
* VersionCheckUrl: <http://releases.llvm.org/download.html>
* VersionCheckXPath: `//ul/li/a/@href`
* VersionCheckPattern: `/LLVM-(?<Version>[\d\.]+)-win32\.exe`

### Zig

Zig is a general-purpose programming language and toolchain
for maintaining robust, optimal and reusable software.

* ID: `Bench.Zig`
* Tags:
    + cli
    + language
    + compiler
    + zig
* Website: <https://ziglang.org>
* License: MIT
* LicenseUrl: <https://github.com/ziglang/zig/blob/master/LICENSE>
* Docs:
    + Language Reference: `https://ziglang.org/documentation/$:Version$/`
    + Standard Library: `https://ziglang.org/documentation/$:Version$/std/`
    + Overview: <https://ziglang.org/learn/overview/>
    + Source Code: <https://github.com/ziglang/zig>
* Version: 0.14.1
* Url: `https://ziglang.org/download/$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath32Bit: `zig-x86-windows-$:Version$`
* ArchivePath64Bit: `zig-x86_64-windows-$:Version$`

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
* Version: 1.24.5
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
* VersionCheckUrl: <https://golang.org/dl/>
* VersionCheckXPath: `//td[@class='filename']/a`
* VersionCheckPattern: `^go(?<Version>[\d\.]+?)\.windows-386\.zip$`

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
* VersionMajor: 23
* VersionMinor: 1
* ErtsVersion: 11.1
* Version: $:VersionMajor$.$:VersionMinor$
* Url: `http://erlang.org/download/$:ArchiveName$`
* ArchiveName32Bit: `otp_win32_$:Version$.exe`
* ArchiveName64Bit: `otp_win64_$:Version$.exe`
* ErtsDir: `erts-$:ErtsVersion$`
* Path: `$:ErtsDir$\bin`
* Exe: `$:ErtsDir$\bin\erl.exe`
* Environment:
     `ERLANG_HOME`: `$:ErtsDir$`
     `ERL_EPMD_ADDRESS`: `127.0.0.1`
* Launcher: `$:Label$`
* LauncherExecutable: `$:ErtsDir$\bin\werl.exe`
* VersionCheckUrl: <http://www.erlang.org/downloads>
* VersionCheckXPath: `//li`
* VersionCheckPattern: `^OTP (?<Version>[\d\.]+)$`

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
* Version: `>=2.3.0 <3.0.0`
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
* Version: 4.1.0
* Url: `http://cran.uni-muenster.de/bin/windows/base/old/$:Version$/$:ArchiveName$`
* ArchiveName: `R-$:Version$-win.exe`
* ArchiveTyp: `inno`
* Dir: `bench\r`
* Path32Bit: `bin\i386`
* Path64Bit: `bin\x64`
* Exe: `$:Path$\R.exe`
* Environment:
    + `R_HOME`: `$:Dir$`
* VersionCheckUrl: <http://cran.uni-muenster.de/bin/windows/base/old/>
* VersionCheckXPath: `/html/body/a`
* VersionCheckPattern: `^R (?<Version>[\d\.]+)$`

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
* Version: 1.1.33.02
* Url: `https://github.com/Lexikos/AutoHotkey_L/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `AutoHotkey_$:Version$_setup.exe`
* Exe32Bit: `AutoHotkeyU32.exe`
* Exe64Bit: `AutoHotkeyU64.exe`
* Launcher: `$:Label$`

### Vagrant

* ID: `Bench.Vagrant`
* Tags:
    + cli
    + virtualization
    + provisioning
* Website: <https://www.vagrantup.com/>
* License: MIT
* LicenseUrl: <https://github.com/hashicorp/vagrant/blob/master/LICENSE>
* Version: 2.4.0
* Url: `https://releases.hashicorp.com/vagrant/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `vagrant_$:Version$_windows_i686.msi`
* ArchiveName64Bit: `vagrant_$:Version$_windows_amd64.msi`
* ArchivePath: `SourceDir\Vagrant`
* Path: `bin`
* Exe: `bin\vagrant.exe`
* VersionCheckUrl: <https://www.vagrantup.com/downloads.html>
* VersionCheckXPath: `//div[@class='downloads']/descendant::a[@data-os='windows']/@href`
* VersionCheckPattern: `/vagrant_(?<Version>[\d\.]+)_i686\.msi$`

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
* Version: 19.03.1
* Only64Bit: `true`
* Url64Bit: `https://github.com/docker/toolbox/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `DockerToolbox-$:Version$.exe`
* ArchiveTyp: `inno`
* Dir: `bench\docker`
* Exe: `docker.exe`

### Docker Machine

If you use the official Docker Desktop for Windows,
you may still want to use Docker Machine.

* ID: `Bench.DockerMachine`
* Label: Docker Machine
* Tags:
    + docker
    + virtualization
* Website: <https://docs.docker.com/machine/>
* License: Apache-2.0
* Version: 0.16.2
* Only64Bit: `true`
* Url64Bit: `https://github.com/docker/machine/releases/download/v$:Version$/docker-machine-Windows-x86_64.exe`
* ResourceName: `docker-machine.exe`
* Exe: `$:ResourceName$`

### Docker Machine VmWare Workstation Driver

This plugin for Docker Machine creates Docker hosts locally on a VMware Workstation.

* ID: `Bench.DockerMachineVmWareWorkstation`
* Label: Docker Machine VmWare Workstation Driver
* Tags:
    + docker
    + virtualization
    + vmware
* Dependencies: `Bench.DockerMachine`
* Website: <https://github.com/pecigonzalo/docker-machine-vmwareworkstation>
* License: Apache-2.0
* Version: 1.1.0
* Only64Bit: `true`
* Url64Bit: `https://github.com/pecigonzalo/docker-machine-vmwareworkstation/releases/download/v$:Version$/$:ResourceName$`
* ResourceName: `docker-machine-driver-vmwareworkstation.exe`
* Dir: `$Bench.DockerMachine:Dir$`
* Exe: `$:ResourceName$`

### VirtualBox Installer

* ID: `Bench.VirtualBoxInstaller`
* Label: VirtualBox Installer
    + virtualization
    + setup
    + vbox
* Version: 6.1.14
* Release: 140239
* Url: `http://download.virtualbox.org/virtualbox/$:Version$/$:ResourceName$`
* ResourceName: `VirtualBox-$:Version$-$:Release$-Win.exe`
* Dir: `bench\vbox-installer`
* Register: `false`
* Exe: `$:ResourceName$`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://www.virtualbox.org/wiki/Downloads>
* VersionCheckXPath: `//div[@id='wikipage']/descendant::ul/li/a/@href`
* VersionCheckPattern: `VirtualBox-(?<Version>[\d\.]+-\d+)-Win\.exe`
* VersionCheckString: `$:Version$-$:Release$`

## Software Development Utilities

### CyberChef

_The Cyber Swiss Army Knife_

CyberChef is a simple, intuitive web app for carrying out all manner of "cyber" operations within a web browser. These operations include simple encoding like XOR or Base64, more complex encryption like AES, DES and Blowfish, creating binary and hexdumps, compression and decompression of data, calculating hashes and checksums, IPv6 and X.509 parsing, changing character encodings, and much more.

The tool is designed to enable both technical and non-technical analysts to manipulate data in complex ways without having to deal with complex tools or algorithms. It was conceived, designed, built and incrementally improved by an analyst in their 10% innovation time over several years.

* ID: `Bench.CyberChef`
* Tags:
    + web
    + gui
* License: Apache-2.0
* Website: <https://github.com/gchq/CyberChef>
* Docs:
    + Local: `$:Dir$\$:Exe$`
    + Online: <https://gchq.github.io/CyberChef/>
* Version: 9.33.0
* Url: `https://github.com/gchq/CyberChef/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `CyberChef_v$:Version$.zip`
* Exe: `CyberChef_v$:Version$.html`
* Register: true
* Launcher: `$:Label$`
* LauncherIcon: `$:Dir$\cyberchef.ico`

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
* SetupTestFile: `composer.phar`
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
* Version: latest
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

### Docsify

A magical documentation site generator.

* ID: `Bench.Docsify`
* PackageName: `docsify-cli`
* Tags:
    + cli
    + html
    + markdown
    + documentation
* Typ: `node-package`
* Website: <https://docsify.js.org/>
* License: MIT
* LicenseUrl: <https://github.com/docsifyjs/docsify/blob/develop/LICENSE>
* Version: latest

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
* Launcher: `$:Label$`

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
* Version: 3.9.9
* Url: `http://www.apache.org/dist/maven/maven-3/$:Version$/binaries/$:ArchiveName$`
* ArchiveName: `apache-maven-$:Version$-bin.zip`
* ArchivePath: `apache-maven-$:Version$`
* Dir: `bench\mvn`
* Path: `bin`
* Exe: `bin\mvn.cmd`
* VersionCheckUrl: <http://www.apache.org/dist/maven/maven-3/>
* VersionCheckXPath: `/html/body/pre/a`
* VersionCheckPattern: `(?<Version>[\d\.]+)`

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
* Version: 6.6.1
* Url: `https://services.gradle.org/distributions/$:ArchiveName$`
* ArchiveName: `gradle-$:Version$-bin.zip`
* ArchivePath: `gradle-$:Version$`
* Path: `bin`
* Exe: `bin\gradle.bat`
* VersionCheckUrl: <https://services.gradle.org/distributions/>
* VersionCheckXPath: `//ul/li/a/@href`
* VersionCheckPattern: `gradle-(?<Version>[\d\.]+)-bin\.zip$`

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
* VersionMajor: 3.20
* Version: $:VersionMajor$.5
* Url: `https://cmake.org/files/v$:VersionMajor$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath32Bit: `cmake-$:Version$-windows-x86`
* ArchivePath64Bit: `cmake-$:Version$-windows-x86_64`
* Path: `bin`
* Exe: `bin\cmake.exe`
* VersionCheckUrl: <https://cmake.org/files/LatestRelease/>
* VersionCheckXPath: `/html/body/table/descendant::td/a`
* VersionCheckPattern: `cmake-(?<Version>[\d\.]+)-win32-x86\.zip`

### Protocol Buffers

Protocol Buffers - Google's data interchange format.

* ID: `Bench.Protobuf`
* Tags:
    + cli
    + compiler
    + data exchange
* Website: <https://developers.google.com/protocol-buffers/>
* Docs:
    + Overview: <https://developers.google.com/protocol-buffers/docs/overview>
    + Reference: <https://developers.google.com/protocol-buffers/docs/reference/overview>
    + Repository: <https://github.com/protocolbuffers/protobuf>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/protocolbuffers/protobuf/master/LICENSE>
* Version: 3.13.0
* Url: `https://github.com/protocolbuffers/protobuf/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName64Bit: `protoc-$:Version$-win64.zip`
* ArchiveName32Bit: `protoc-$:Version$-win32.zip`
* Path: `bin`
* Exe: `bin\protoc.exe`

### Golang Dep

Dependency management for Go

* ID: `Bench.Go.Dep`
* Tags:
    - cli
    - golang
    - package manager
* Website: <https://golang.github.io/dep/>
* License: BSD-3-Clause
* LicenseUrl: <https://github.com/golang/dep/blob/master/LICENSE>
* Version: 0.5.4
* Url64Bit: `https://github.com/golang/dep/releases/download/v$:Version$/dep-windows-amd64.exe`
* Url32Bit: `https://github.com/golang/dep/releases/download/v$:Version$/dep-windows-386.exe`
* ResourceName: `dep.exe`
* Dir: `bench\go-dep`

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

### Twine

Twine is a utility for publishing Python packages on PyPI.

It provides build system independent uploads of source and binary distribution artifacts for both new and existing projects.

* ID: `Bench.Twine`
* Tags:
    + cli
    + python
* Typ: `python-package`
* Website: <http://twine.readthedocs.io/>
* License: Apache-2.0

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
* ~Dependencies: `Bench.Python.PyReadline`
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

### PyQT 5

* ID: `Bench.Python3.PyQT5`
* Label: PyQT 5 for Python 3
* Typ: `python3-package`
* Package: `PyQT5`
* Version: 5.15.5

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
* Version: 0.6.1
* Url: `https://bintray.com/artifact/download/zealdocs/windows/$:ArchiveName$`
* ArchiveName32Bit: `zeal-$:Version$-windows-x86.msi`
* ArchiveName64Bit: `zeal-$:Version$-windows-x64.msi`
* ArchivePath: `SourceDir\Zeal`
* RegistryKeys: `Software\Zeal`
* Launcher: `$:Label$`
* Register: `false`
* VersionCheckUrl: <https://zealdocs.org/download.html>
* VersionCheckXPath: `//a[@role='button']/@href`
* VersionCheckPattern: `zeal-(?<Version>[\d\.]+)-windows-x86.msi`

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
    + database
    + sql
    + sqlite
* Website: <http://sqlitebrowser.org/>
* Docs:
    + Wiki: <https://github.com/sqlitebrowser/sqlitebrowser/wiki>
* License: GPL-3.0
* Version: 3.12.0
* Url: `https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `DB.Browser.for.SQLite-$:Version$-win32.zip`
* ArchiveName64Bit: `DB.Browser.for.SQLite-$:Version$-win64.zip`
* ArchivePath: `DB Browser for SQLite`
* Exe: `DB Browser for SQLite.exe`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://github.com/sqlitebrowser/sqlitebrowser/releases/>
* VersionCheckXPath: `//div[@class='release-entry']/descendant::ul/li/a/@title`
* VersionCheckPattern: `^v(?<Version>[\d\.]+)$`

### SQLite Studio

SQLIte Studio is a SQLite database manager with the following features:

- Intuitive Interface
- Powerful, yet light and fast
- All SQLite 3 and SQLite 2 features wrapped within a simple GUI
- Exporting to various formats (SQL statements, CSV, HTML, XML, PDF, JSON)
- Importing data from various formats (CSV, custom text files with regular expressions)
- Numerous small additions, like formatting code, history of queries ind editor, on-the-fly syntax checking, and more
- Unicode support
- Configurable colors, fonts and shortcuts

* ID: `Bench.SQLiteStudio`
* Label: SQLite Studio
* Tags:
    + gui
    + database
    + sql
    + sqlite
* Website: <https://sqlitestudio.pl>
* Docs:
    + Source Code: <https://github.com/pawelsalawa/sqlitestudio>
    + Wiki: <https://github.com/pawelsalawa/sqlitestudio/wiki>
* License: GPL-3.0
* Version: 3.2.1
* Url: `https://github.com/pawelsalawa/sqlitestudio/releases/download/3.2.1/$:ArchiveName$`
* ArchiveName: `SQLiteStudio-$:Version$.zip`
* ArchivePath: `SQLiteStudio`
* Launcher: `$:Label$`

### DBeaver

* ID: `Bench.DBeaver`
* Label: DBeaver
* Tags:
    + gui
    + database
    + sql
* Website: <https://dbeaver.io/>
* License: Apache-2
* Version: latest
* Only64Bit: true
* Url: `https://dbeaver.io/files/$:ArchiveName$`
* ArchiveName64Bit: `dbeaver-ce-latest-win32.win32.x86_64.zip`
* ArchivePath: `dbeaver`
* Launcher: `$:Label$`

### Schema Crawler

* ID: `Bench.SchemaCrawler`
* Dependencies:
    + `Bench.OpenJRE8`
* Label: Schema Crawler
* Tags:
    + cli
    + database
    + schema
    + diagram
* Website: <https://www.schemacrawler.com/>
* License: GPL-3
* Version: 16.15.7
* Url: `https://github.com/schemacrawler/SchemaCrawler/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `schemacrawler-$:Version$-distribution.zip`
* ArchivePath: `schemacrawler-$:Version$-distribution\_schemacrawler`
* Exe: `schemacrawler.cmd`

### Postman

Create and save REST, SOAP, and GraphQL queries directly from Postman.

* ID: `Bench.Postman`
* Tags:
    + gui
    + http
    + rest
    + debugging
* Website: <https://getpostman.com>
* Docs:
    + Learning Center: <https://learning.getpostman.com/>
* Version: latest
* Url32Bit: `https://dl.pstmn.io/download/latest/win32`
* Url64Bit: `https://dl.pstmn.io/download/latest/win64`
* ArchiveName64Bit: `Postman-win64-Setup.exe`
* ArchiveName32Bit: `Postman-win32-Setup.exe`
* Register: `false`
* Launcher: `$:Label$`

### Bruno

* ID: `Bench.Bruno`
* Tags:
    + gui
    + http
    + rest
    + debugging
* Website: <https://www.usebruno.com/>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/usebruno/bruno/refs/heads/main/license.md>
* Docs:
    + Documentation: <https://docs.usebruno.com/>
* Version: 1.39.1
* Only64Bit: `true`
* Url: `https://github.com/usebruno/bruno/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `bruno_$:Version$_x64_win.zip`
* ArchivePath: `win-unpacked`
* Launcher: `$:Label$`

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

## Python Dependencies

### xlrd

Extract data from Excel spreadsheets (.xls and .xlsx, versions 2.0 onwards) on any platform.
Pure Python (2.7, 3.4+). Strong support for Excel dates.
Unicode-aware.

* ID: `Bench.Python.Xlrd`
* Typ: `python-package`
* Website: <http://www.python-excel.org/>
* Docs:
    + Repository: <https://github.com/python-excel/xlrd>
* License: BSD-3-Clause

### openpyxl

openpyxl is a Python library to read/write Excel 2010 xlsx/xlsm/xltx/xltm files.

* ID: `Bench.Python.OpenPyXl`
* Label: openpyxl
* Typ: `python-package`
* Dependencies:
    + `Bench.Python.Pillow`
* Website: <https://openpyxl.readthedocs.io>
* License: MIT

## Math and Science

### Jupyter for Python 3

Open source, interactive data science and scientific computing
across over 40 programming languages.

* ID: `Bench.Python3.Jupyter`
* Label: Jupyter (Python 3)
* Tags:
    + gui
    + notebook
    + python
    + science
    + plotting
* Typ: `python3-package`
* Dependencies:
    + `Bench.Python3.IPython`
    + `Bench.Python3.JupyterLab`
* Website: <https://jupyter.org>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/jupyter/jupyter/master/LICENSE>
* Docs:
    + Running the Notebook: <https://jupyter.readthedocs.io/en/latest/running.html>
* Exe: `Scripts\jupyter.exe`
* SetupTestFile: `$:Exe$`
* Launcher: Jupyter Notebook
* LauncherWorkingDir: `$ProjectRootDir$`
* LauncherArguments: `notebook`, `%*`
* KeyBindings: `sublime`

### Jupyter Lab for Python 3

* ID: `Bench.Python3.JupyterLab`
* Label: Jupyter Lab (Python 3)
* Tags:
    + gui
    + notebook
    + science
    + plotting
* Typ: `meta`
* Dependencies:
    + `Bench.Python3.Jupyter`
* Website: <https://jupyterlab.readthedocs.io/en/stable/>
* License: BSD-3-Clause
* LicenseUrl: <https://github.com/jupyterlab/jupyterlab/raw/master/LICENSE>
* Docs:
    + Getting Started: <https://jupyterlab.readthedocs.io/en/stable/getting_started/starting.html>
* Launcher: Jupyter Lab
* LauncherWorkingDir: `$ProjectRootDir$`
* LauncherExecutable: `$Bench.Python3.Jupyter:Path$\jupyter.exe`
* LauncherArguments: `lab`, `%*`
* SetupTestFile: `$Bench.Python3.Jupyter:SetupTestFile$`

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

### NumPy for Python 3

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
* Typ: `python3-package`
* PackageName: `numpy`
* Website: <http://www.numpy.org/>
* Docs:
    + Manual: <https://docs.scipy.org/doc/numpy/>
    + User Guide: <https://docs.scipy.org/doc/numpy/user/>
    + Reference: <https://docs.scipy.org/doc/numpy/reference/>
* License: BSD-3-Clause
* LicenseUrl: <http://www.numpy.org/license.html>

### SciPy library for Python 3

The SciPy library is one of the core packages that make up the SciPy stack.
It provides many user-friendly and efficient numerical routines such as routines for numerical integration and optimization.

* ID: `Bench.Python3.SciPyLib`
* Label: SciPy library (Python 3)
* Tags:
    + science
* Typ: `python3-package`
* PackageName: `SciPy`
* Website: <https://www.scipy.org/scipylib/>
* Docs:
    + Reference: <https://docs.scipy.org/doc/scipy/reference/>
* License: BSD-3-Clause
* LicenseUrl: <https://raw.githubusercontent.com/scipy/scipy/master/LICENSE.txt>

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

### Seaborn

Seaborn is a Python data visualization library based on matplotlib. It provides a high-level interface for drawing attractive and informative statistical graphics.

* ID: `Bench.Python.Seaborn`
* Tags:
    + plotting
* Typ: `python-package`
* Dependencies:
    + `Bench.Python.Pandas`
    + `Bench.Python.Matplotlib`
* Website: <https://seaborn.pydata.org/>
* Docs:
    + Gallery: <https://seaborn.pydata.org/examples/index.html>
    + Tutorial: <https://seaborn.pydata.org/tutorial.html>
    + API: <https://seaborn.pydata.org/api.html>
    + Repository: <https://github.com/mwaskom/seaborn>
* License: BSD-3-Clause

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

### Pandas

pandas is an open source, BSD-licensed library providing high-performance, easy-to-use data structures and data analysis tools for the Python programming language.

* ID: `Bench.Python.Pandas`
* Label: Pandas
* Tags:
    + data science
* Typ: `python-package`
* Dependencies:
    + `Bench.Python.Xlrd`
    + `Bench.Python.OpenPyXl`
* Website: <http://pandas.pydata.org/>
* Docs:
    + Documentation: <http://pandas.pydata.org/pandas-docs/stable/>
    + 10 Minutes to pandas: <http://pandas.pydata.org/pandas-docs/stable/10min.html>
* License: BSD-3-Clause
* LicenseUrl: <http://pandas.pydata.org/pandas-docs/stable/overview.html#license>

### Patsy

Describing statistical models in Python

* ID: `Bench.Python.Patsy`
* Typ: `python-package`
* Website: <https://github.com/pydata/patsy/>
* Docs:
    + Documentation: <https://patsy.readthedocs.io/>

### StatsModels for Python 3

Statistical modeling and econometrics in Python

* ID: `Bench.Python3.StatsModels`
* Label: StatsModels (Python 3)
* Typ: `python3-package`
* Dependencies:
    + `Bench.Python3.NumPy`
    + `Bench.Python3.SciPyLib`
    + `Bench.Python.Pandas`
    + `Bench.Python.Patsy`
* Website: <https://www.statsmodels.org>
* Docs:
    + Examples: <https://www.statsmodels.org/stable/examples/index.html>
    + Source Code: <https://github.com/statsmodels/statsmodels/>

### Numba for Python 3

Numba is an open source JIT compiler
that translates a subset of Python and NumPy code into fast machine code.

* ID: `Bench.Python3.Numba`
* Dependencies:
    + `Bench.Python3.NumPy`
* Label: Numba (Python 3)
* Typ: `python3-package`
* Website: <http://llvmlite.pydata.org/en/latest/>
* License: BSD-2-Clause

### fastparquet for Python 3

fastparquet is a python implementation of the [parquet format](https://github.com/apache/parquet-format),
aiming integrate into python-based big data work-flows.

* ID: `Bench.Python3.FastParquet`
* Dependencies:
    + `Bench.Python3.Numba`
    + `Bench.Python.Pandas`
* Label: fastparquet
* Typ: `python3-package`
* Website: <https://github.com/dask/fastparquet>
* License: Apache-2.0

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

### Basemap for Python 3

* ID: `Bench.Python3.Basemap`
* Label: Basemap (Python 3)
* Tags:
    + plotting
    + geography
* Typ: `python3-package`
* Dependencies:
    + `Bench.Python3.NumPy`
    + `Bench.Python.Matplotlib`
    + `Bench.Python.Pillow`
* Website: <https://github.com/matplotlib/basemap>
* License: GPL-2.0
* SetupTestFile: `$:Dir$\lib\site-packages\mpl_toolkits\basemap\__init__.py`

### Cartopy for Python 3

A cartographic python library with matplotlib support.

* ID: `Bench.Python3.Cartopy`
* Label: Cartopy (Python 3)
* Tags:
    + geometry
* Typ: `python3-package`
* PackageName: `Cartopy`
* Dependencies:
    + `Bench.Python3.NumPy`
* Website: <https://github.com/SciTools/cartopy/>
* Docs:
    + Documentation: <https://scitools.org.uk/cartopy/docs/latest/>
* License: LGPL-3.0
* LicenseUrl: <https://github.com/SciTools/cartopy/blob/master/LICENSE>

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
* Launcher: `$:Label$`
* VersionCheckUrl: <http://www.flos-freeware.ch/notepad2.html>
* VersionCheckXPath: `//div[@id='contents']/p/em`
* VersionCheckPattern: `^Current Release\: Version (?<Version>[\d\.]+)`

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
* VersionMajor: 8
* Version: `$:VersionMajor$.8.2`
* Url: `https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `npp.$:Version$.portable.7z`
* ArchiveName64Bit: `npp.$:Version$.portable.x64.7z`
* Exe: `notepad++.exe`
* Launcher: `$:Label$`
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
* Version: 1.35
* Url: `https://github.com/mike-ward/Markdown-Edit/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `MarkdownEdit.zip`
* Exe: `mde.exe`
* Register: `false`
* Launcher: `$:Label$`

### Boostnote

An open source markdown editor for Mac, Windows and Linux app.  
The intuitive and stylish note taking tool for developers.

**Warning:** Boostnote creates a directory `Boostnote` in the systems user
home directory as default storage location for notes and snippets.

* ID: `Bench.Boostnote`
* Dependencies: `Bench.NuGet`
* Website: <https://boostnote.io/>
* License: GPL-3.0
* Docs:
    + Blog: <https://medium.com/boostnote>
    + Source Code: <https://github.com/BoostIO/Boostnote>
* Version: 0.16.1
* Url: `https://github.com/BoostIO/boost-releases/releases/download/v$:Version$/BoostnoteSetup.exe`
* ArchiveName: `BoostnoteSetup_v$:Version$.exe`
* Launcher: `$:Label$`

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
* Version: 1.51.0
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
* Launcher: `$:Label$`
* DefaultPackages:
    + `minimap`
    + `script`
    + `git-plus`
    + `language-batchfile`
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
* Url32Bit: <https://go.microsoft.com/fwlink/?LinkID=623231>
* Url64Bit: <https://go.microsoft.com/fwlink/?linkid=850641>
* ArchiveName32Bit: `VSCode-win32-ia32.zip`
* ArchiveName64Bit: `VSCode-win32-x64.zip`
* Dir: `bench\code`
* Exe: `bin\code.cmd`
* Path: `bin`
* Launcher: `$:Label$`
* LauncherExecutable: `$:Dir$\Code.exe`
* Extensions:
    + `mrmlnc.vscode-json5`

### Sublime Text

Sublime Text is a sophisticated text editor for code, markup and prose.
You'll love the slick user interface, extraordinary features and amazing performance.

* ID: `Bench.SublimeText`
* Label: Sublime Text
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
* Version: 4200
* Url: `https://download.sublimetext.com/$:ArchiveName$`
* ArchiveName32Bit: `sublime_text_build_$:Version$.zip`
* ArchiveName64Bit: `sublime_text_build_$:Version$_x64.zip`
* Exe: `sublime_text.exe`
* Launcher: `$:Label$`
* DataDir: `$AppDataDir$\Sublime Text`
* VersionCheckUrl: <https://www.sublimetext.com/download>
* VersionCheckXPath: `//article/h3`
* VersionCheckPattern: `[\d\.]+ \(Build (?<Version>\d+)\)`

### Sublime Text Package Control

* ID: Bench.SublimeText.PackageControl
* Tags:
    + package manager
    + python
* Dependencies: `Bench.SublimeText`
* Label: Sublime Text Package Control
* Website: <https://packagecontrol.io>
* Url: <https://packagecontrol.io/Package%20Control.sublime-package>
* ResourceName: `Package Control.sublime-package`
* Dir: `$Bench.SublimeText:DataDir$\Installed Packages`
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
* VersionMajor: 27
* Version: $:VersionMajor$.1
* Url: `http://ftp.gnu.org/gnu/emacs/windows/emacs-$:VersionMajor$/$:ArchiveName$`
* ArchiveName32Bit: `emacs-$:Version$-i686.zip`
* ArchiveName64Bit: `emacs-$:Version$-x86_64.zip`
* Dir: `bench\gnu`
* Path: `bin`
* Exe: `bin\emacs.exe`
* Launcher: `$:Label$`
* LauncherExecutable: `$:Dir$\bin\runemacs.exe`
* VersionCheckUrl: <https://ftp.gnu.org/gnu/emacs/>
* VersionCheckXPath: `//td/a`
* VersionCheckPattern: `emacs-(?<Version>[\d\.]+?)\.tar\.gz`

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
* VersionMinor: 2
* Version: $:VersionMajor$.$:VersionMinor$
* Release: $:VersionMajor$$:VersionMinor$
* Url: `http://ftp.vim.org/pub/vim/pc/$:ArchiveName$`
* ArchiveName: `gvim$:Release$.zip`
* ArchivePath: `vim\vim$:Release$`
* Exe: `gvim.exe`
* Launcher: `$:Label$`
* VersionCheckUrl: <http://ftp.vim.org/pub/vim/pc/>
* VersionCheckXPath: `//table[@class='readme']/descendant::pre`
* VersionCheckPattern: `-- version (?<Version>[\d\.]+) --`

### Spyder

The Scientific PYthon Development EnviRonment

* ID: `Bench.Python3.Spyder`
* Label: Spyder
* Tags:
    + gui
    + editor
    + ide
    + python
* Website: <https://github.com/spyder-ide/spyder>
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/spyder-ide/spyder/master/LICENSE>
* Typ: `python3-package`
* Exe: `$:Path$\spyder.exe`
* Dependencies:
    + `Bench.Python3.SciPy`
    + `Bench.Python3.PyQT5`
    + `Bench.Python.PyCodeStyle`
    + `Bench.Python3.SpyderNotebook`
* Launcher: `$:Label$`

### Spyder Notebook

A Jupyter Notebook Plugin for Spyder

* ID: `Bench.Python3.SpyderNotebook`
* Label: Spyder Notebook
* PackageName: `spyder-notebook`
* Tags:
    + gui
    + editor
    + ide
    + python
* Website: <https://github.com/spyder-ide/spyder-notebook>
* License: MIT
* LicenseUrl: <https://github.com/spyder-ide/spyder-notebook/blob/master/LICENSE>
* Typ: `python3-package`
* Register: `false`
* SetupTestFile: `$:Dir$\Lib\site-packages\spyder_notebook\notebookplugin.py`

### Spyder Unittest

Support for running test for famous unittest frameworks in Spyder.

* ID: `Bench.Python3.SpyderUnittest`
* Label: Spyder Unittest
* PackageName: `spyder-unittest`
* Tags:
    + gui
    + unittest
* Website: <https://github.com/spyder-ide/spyder-unittest>
* License: MIT
* LicenseUrl: <https://github.com/spyder-ide/spyder-unittest/blob/master/LICENSE.txt>
* Typ: `python3-package`
* Register: `false`
* SetupTestFile: `$:Dir$\Lib\site-packages\spyder_unittest\unittestplugin.py`

### Thonny

Python IDE for beginners

* ID: `Bench.Python3.Thonny`
* Label: Thonny
* PackageName: `thonny`
* Tags:
    + gui
    + ide
    + python
* Website: <https://thonny.org/>
* License: MIT
* LicenseUrl: <https://github.com/thonny/thonny/blob/master/LICENSE.txt>
* Typ: `python3-package`
* Exe: `$:Path$\thonny.exe`
* Launcher: `$:Label$`
* LauncherIcon: `$:Dir$\Lib\site-packages\thonny\res\thonny.ico`

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
* Launcher: `$:Label$`

### Nightcode

An IDE for Clojure.

* ID: `Bench.Nightcode`
* Tags:
    + gui
    + editor
    + ide
    + clojure
* Website: <https://sekao.net/nightcode/>
* License: Public Domain
* LicenseUrl: <https://raw.githubusercontent.com/oakes/Nightcode/master/UNLICENSE>
* Version: 2.8.3
* Url: `https://github.com/oakes/Nightcode/releases/download/$:Version$/$:ArchiveName$`
* ArchiveName: `Nightcode-$:Version$.zip`
* ArchivePath: `Nightcode-$:Version$`
* Launcher: `$:Label$`
* LauncherArguments: `--module-path`, `$Bench.JFX:ModulePath$`, `--add-modules=javafx.controls`, `-jar`, `$:Exe$`
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
* CodeName: 2023-03
* Version: $:CodeName$
* Release: R
* Dependencies: `Bench.JDK`
* Website: <https://www.eclipse.org/>
* License: EFSUA
* LicenseUrl: <https://www.eclipse.org/legal/epl/notice.php>
* Url: `https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/$:CodeName$/$:Release$/$:ArchiveName$`
* ArchiveName64Bit: `eclipse-java-$:CodeName$-$:Release$-win32-x86_64.zip`
* Only64Bit: `true`
* ArchivePath: `eclipse`
* Dir: `bench\eclipse_java`
* Exe: `eclipse.exe`
* Register: `false`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://www.eclipse.org/downloads/packages/>
* VersionCheckXPath: `//span[@class='windows']/a/@href`
* VersionCheckPattern: `/technology/epp/downloads/release/(?<Version>[^/]+/[^/]+)/eclipse-java-.+?-win32-x86_64\.zip$`
* VersionCheckString: `$:CodeName$/$:Release$`

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
* Dependencies: `Bench.JDK`
* Website: <https://www.eclipse.org/>
* License: EFSUA
* LicenseUrl: <https://www.eclipse.org/legal/epl/notice.php>
* Url: `https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/$:CodeName$/$:Release$/$:ArchiveName$`
* ArchiveName64Bit: `eclipse-php-$:CodeName$-$:Release$-win32-x86_64.zip`
* Only64Bit: `true`
* ArchivePath: `eclipse`
* Dir: `bench\eclipse_php`
* Exe: `eclipse.exe`
* Register: `false`
* Launcher: `$:Label$`

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
* Dependencies: `Bench.JDK`
* Website: <https://www.eclipse.org/>
* License: EFSUA
* LicenseUrl: <https://www.eclipse.org/legal/epl/notice.php>
* Url: `https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/$:CodeName$/$:Release$/$:ArchiveName$`
* ArchiveName64Bit: `eclipse-cpp-$:CodeName$-$:Release$-win32-x86_64.zip`
* Only64Bit: `true`
* ArchivePath: `eclipse`
* Dir: `bench\eclipse_cpp`
* Exe: `eclipse.exe`
* Register: `false`
* Launcher: `$:Label$`

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
    + jetbrains
* Website: <https://www.jetbrains.com/idea/>
* Docs:
    + Documentation: <https://www.jetbrains.com/idea/documentation/>
* License: Apache-2.0
* Version: 2024.3.5
* Only64Bit: `true`
* Url: `https://download.jetbrains.com/idea/$:ArchiveName$`
* ArchiveName: `ideaIC-$:Version$.win.zip`
* Dir: `bench\idea_community`
* Exe64Bit: `bin\idea64.exe`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release>
* VersionCheckJsonPath: `IIC/0/version`
* VersionCheckPattern: `(?<Version>\d{4}\.\d+(?:\.\d+)?)`

### JetBrains PyCharm Community

Python IDE for Professional Developers.

* ID: `Bench.PyCharmCE`
* Label: PyCharm Community
* Tags:
    + gui
    + ide
    + python
    + science
    + jetbrains
* Website: <https://www.jetbrains.com/pycharm/>
* Docs:
    + Documentation: <https://www.jetbrains.com/pycharm/documentation/>
* License: Apache-2.0
* Version: 2024.3.5
* Only64Bit: `true`
* Url: `https://download.jetbrains.com/python/$:ArchiveName$`
* ArchiveName: `pycharm-community-$:Version$.win.zip`
* Dir: `bench\pycharm_community`
* Exe324Bit: `bin\pycharm.exe`
* Exe64Bit: `bin\pycharm64.exe`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release>
* VersionCheckJsonPath: `PCP/0/version`
* VersionCheckPattern: `(?<Version>\d{4}\.\d+(?:\.\d+)?)`

### JetBrains Rider

The world's most loved .NET and game dev IDE

* ID: `Bench.Rider`
* Label: Rider
* Tags:
    + gui
    + ide
    + csharp
    + jetbrains
* Website: <https://www.jetbrains.com/rider/>
* Docs:
    + Documentation: <https://www.jetbrains.com/rider/documentation/>
* Version: 2024.3.6
* Only64Bit: `true`
* Url: `https://download.jetbrains.com/rider/$:ArchiveName$`
* ArchiveName: `JetBrains.Rider-$:Version$.win.zip`
* Dir: `bench\rider`
* Exe: `bin\rider64.exe`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release>
* VersionCheckJsonPath: `RD/0/version`
* VersionCheckPattern: `(?<Version>\d{4}\.\d+(?:\.\d+)?)`

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
* Version32Bit: 1.1.463
* Version64Bit: 1.4.1717
* Url32Bit: `http://download1.rstudio.org/RStudio-$:Version$.exe`
* Url64Bit: `https://download1.rstudio.org/desktop/windows/RStudio-$:Version$.zip`
* ArchiveName32Bit: `RStudio-$:Version$.zip`
* ArchiveName64Bit: `RStudio-x64-$:Version$.zip`
* Dir: `bench\r-studio`
* Path: `bin`
* Exe: `bin\rstudio.exe`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://www.rstudio.com/products/rstudio/download/>
* VersionCheckXPath: `//h4/strong`
* VersionCheckPattern: `RStudio Desktop (?<Version>[\d\.]+)`

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
* Launcher: `$:Label$`

## Arduino IDE

* ID: `Bench.ArduinoIDE`
* Label: Arduino IDE
* Tags:
    + gui
    + editor
    + ide
    + arduino
    + microcontroller
* Version: 2.0.3
* Website: <https://www.arduino.cc/en/software>
* License: AGPL-3.0
* Docs:
    + Documentation: <https://docs.arduino.cc/software/ide-v2>
    + Language Reference: <https://www.arduino.cc/reference/en/>
    + Libraries: <https://www.arduino.cc/reference/en/libraries/>
* Url: `https://github.com/arduino/arduino-ide/releases/download/$:Version$/$:ArchiveName$`
* Only64Bit: `true`
* ArchiveName: `arduino-ide_$:Version$_Windows_64bit.zip`
* Exe: `Arduino IDE.exe`
* Register: `false`
* Launcher: `$:Label$`

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
* VersionCheckUrl: <https://sift-tool.org/download>
* VersionCheckXPath: `//td/a`
* VersionCheckPattern: `sift_(?<Version>[\d\.]+)_windows_386\.zip`

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
* Version: 2.16.8
* Url: `http://downloads.sourceforge.net/winmerge/$:ArchiveName$`
* ArchiveName32Bit: `winmerge-$:Version$-exe.zip`
* ArchiveName64Bit: `winmerge-$:Version$-x64-exe.zip`
* ArchivePath: `WinMerge`
* Exe: `WinMergeU.exe`
* RegistryKeys: `Software\Thingamahoochie`
* Register: `false`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://sourceforge.net/projects/winmerge/files/stable/>
* VersionCheckXPath: `//th/a/span[@class='name']`
* VersionCheckPattern: `^(?<Version>[\d\.]+)$`

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
* Launcher: `$:Label$`
* VersionCheckUrl: <http://www.sourcegear.com/diffmerge/webhelp/chapter_release_notes.html>
* VersionCheckXPath: `//dl[@class='toc']/dt/descendant::a`
* VersionCheckPattern: `Release (?<Version>[\d\.]+)`

### Difftastic

Difftastic is a structural diff tool that understands syntax.

* ID: `Bench.Difftastic`
* Tags:
    + cli
    + diff
* License: MIT
* LicenseUrl: <https://raw.githubusercontent.com/Wilfred/difftastic/refs/heads/master/LICENSE>
* Website: <https://difftastic.wilfred.me.uk/>
* Docs:
    + Manual: <https://difftastic.wilfred.me.uk/introduction.html>
    + Language Support: <https://difftastic.wilfred.me.uk/languages_supported.html>
* Only64Bit: `true`
* Version: 0.63.0
* Url: `https://github.com/Wilfred/difftastic/releases/download/$:Version$/$:ArchiveName$`
* ArchiveName: `difft-x86_64-pc-windows-msvc.zip`
* Exe: `difft.exe`
* Register: true

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
* Launcher: `$:Label$`

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

### Rufus

Create bootable USB drives the easy way.

* ID: `Bench.Rufus`
* Tags:
    + usb
    + filesystem
    + image
    + boot
* License: GPL-3.0
* Version: 3.14
* Url: `https://github.com/pbatard/rufus/releases/download/v$:Version$/rufus-$:Version$p.exe`
* ResourceName: `rufus.exe`
* Launcher: `$:Label$`

### Ventoy

Ventoy is an open source tool to create bootable USB drive for ISO/WIM/IMG/VHD(x)/EFI files.
With ventoy, you don't need to format the disk over and over, you just need to copy the ISO/WIM/IMG/VHD(x)/EFI files to the USB drive and boot them directly.
You can copy many files at a time and ventoy will give you a boot menu to select them.

* ID: `Bench.Ventoy`
* Tags:
    + gui
    + boot
* License: GPL-3.0
* Version: 1.0.61
* Url: `https://github.com/ventoy/Ventoy/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `ventoy-$:Version$-windows.zip`
* ArchivePath: `ventoy-$:Version$`
* Register: `false`
* Exe: `Ventoy2Disk.exe`
* Launcher: `$:Label$`
* LauncherWorkingDir: `$:Dir$`

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
* Version: 3.63.2
* Url: `https://download.filezilla-project.org/client/$:ArchiveName$`
* DownloadHeaders:
    + `User-Agent`: `Bench`
* ArchiveName32Bit: `FileZilla_$:Version$_win32.zip`
* ArchiveName64Bit: `FileZilla_$:Version$_win64.zip`
* ArchivePath: `FileZilla-$:Version$`
* Exe: `filezilla.exe`
* Register: `false`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://download.filezilla-project.org/client/>
* VersionCheckXPath: `//td/a`
* VersionCheckPattern: `FileZilla_(?<Version>[\d\.]+)_win32\.zip`

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
* Version: 5.17.7
* Url: `https://sourceforge.net/projects/winscp/files/WinSCP/$:Version$/$:ArchiveName$`
* ArchiveName: `WinSCP-$:Version$-Portable.zip`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://sourceforge.net/projects/winscp/files/WinSCP/>
* VersionCheckXPath: `//th/a/span[@class='name']`
* VersionCheckPattern: `^(?<Version>[\d\.]+)$`

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
* Launcher: `$:Label$`

## httpie

A simple yet powerful command-line HTTP and API testing client for the API era.

* ID: `Bench.Python3.Httpie`
* Label: httpie
* Tags:
    + cli
    + network
    + http
* Typ: python3-package
* PackageName: `httpie`
* Version: latest

## xh

`xh` is a friendly and fast tool for sending HTTP requests.
It reimplements as much as possible of [HTTPie's](https://httpie.io/) excellent design,
with a focus on improved performance.

* ID: `Bench.xh`
* Tags:
    + cli
    + network
    + http
* License: MIT
* LicenseUrl: <https://github.com/ducaale/xh/blob/master/LICENSE>
* Website: <https://github.com/ducaale/xh>
* Version: 0.24.1
* Url: `https://github.com/ducaale/xh/releases/download/v$:Version$/$:ArchiveName$`
* Only64Bit: `true`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath64Bit: `xh-v$:Version$-x86_64-pc-windows-msvc`

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
* Version: 4.64
* Release: 464
* Url: <https://bitbucket.org/phjounin/tftpd64/downloads/$:ArchiveName$>
* ArchiveName32Bit: `tftpd32.$:Release$.zip`
* ArchiveName64Bit: `tftpd64.$:Release$.zip`
* Launcher: `$:Label$`
* Exe32Bit: `tftpd32.exe`
* Exe64Bit: `tftpd64.exe`
* VersionCheckUrl: <http://www.tftpd64.com/tftpd32_download.html>
* VersionCheckXPath: `//table/descendant::td/b`
* VersionCheckPattern: `^v(?<Version>[\d\.]+)$`

### MySQL

According to Oracle:
MySQL Community Edition is the freely downloadable version
of the world's most popular open source database.

The MySQL data is stored in `%USERPROFILE%\mysql_data`.
You can start the MySQL server by running `mysql_start` in the _Bench_ shell.
You can stop the MySQL server by running `mysql_stop` in the _Bench_ shell.
The initial password for _root_ is `bench`.

**Warning:** _It is not advised to install a MySQL server with a MariaDB server
side-by-side in the same Bench environment
because the executables (e.g. `mysqld.exe`) are named the same._

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
    + Documentation: `http://dev.mysql.com/doc/refman/$:MainVersion$/en/`
    + SQL Syntax: `http://dev.mysql.com/doc/refman/$:MainVersion$/en/sql-syntax.html`
    + Data Types: `http://dev.mysql.com/doc/refman/$:MainVersion$/en/data-types.html`
    + Functions: `http://dev.mysql.com/doc/refman/$:MainVersion$/en/functions.html`
* VersionMajor: 8
* VersionMinor: 0
* Revision: 32
* Release: 0
* MainVersion: `$:VersionMajor$.$:VersionMinor$`
* SubVersion: `$:MainVersion$.$:Revision$`
* Version: `$:SubVersion$.$:Release$`
* Only64Bit: `true`
* Url: `https://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName: `mysql-installer-community-$:Version$.msi`
* Path: `bin`
* Exe: `bin\mysqld.exe`
* MySqlServerOptionFile: `$HomeDir$\mysqld.cnf`
* MySqlDataDir: `$HomeDir$\mysql_data`
* Environment:
    + `MYSQL_SERVER_OPTION_FILE`: `$:MySqlServerOptionFile$`
    + `MYSQL_DATA`: `$:MySqlDataDir$`
* Launcher: MySQL Server
* LauncherExecutable: `bin\mysql_server.cmd`
* VersionCheckUrl: <https://dev.mysql.com/downloads/mysql/>
* VersionCheckXPath: `//h1`
* VersionCheckPattern: `MySQL Community Server (?<Version>[\d\.]+)`
* VersionCheckString: `$:SubVersion$`

### MySQL Utilities

* ID: `Bench.MySQLUtils`
* Label: MySQL Utilities
* Tags:
    + cli
    + mysql
* Website: <https://dev.mysql.com/downloads/utilities/>
* License: GPL-2.0
* Docs:
    + Documentation: `https://dev.mysql.com/doc/mysql-utilities/$:MainVersion$/en/`
* VersionMajor: 1
* VersionMinor: 6
* Revision: 5
* MainVersion: `$:VersionMajor$.$:VersionMinor$`
* Version: `$:MainVersion$.$:Revision$`
* Url: `https://downloads.mysql.com/archives/get/p/30/file/$:ArchiveName$`
* ArchiveName32Bit: `mysql-utilities-$:Version$-win32.msi`
* ArchiveName64Bit: `mysql-utilities-$:Version$-winx64.msi`
* ArchivePath: `SourceDir\MySQL\MySQL Utilities $:MainVersion$`
* SetupTestFile: `mysqlserverinfo.exe`

### MySQL Workbench

MySQL Workbench is a unified visual tool for database architects, developers, and DBAs.
MySQL Workbench provides data modeling, SQL development, and comprehensive administration
tools for server configuration, user administration, backup, and much more.

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
* VersionMajor: 8
* VersionMinor: 0
* Revision: 32
* MainVersion: `$:VersionMajor$.$:VersionMinor$`
* SubVersion: `$:MainVersion$.$:Revision$`
* Version: `$:SubVersion$`
* Only64Bit: `true`
* Url: `https://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName: `mysql-workbench-community-$:Version$-winx64.msi`
* Exe: `MySQLWorkbench.exe`
* Register: `false`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://dev.mysql.com/downloads/workbench/>
* VersionCheckXPath: `//h1`
* VersionCheckPattern: `MySQL Workbench (?<Version>[\d\.]+)`
* VersionCheckString: `$:SubVersion$`

### Maria DB

MariaDB Server is one of the most popular database servers in the world. It’s made by the original developers of MySQL and guaranteed to stay open source. Notable users include Wikipedia, WordPress.com and Google.

MariaDB turns data into structured information in a wide array of applications, ranging from banking to websites. It is an enhanced, drop-in replacement for MySQL. MariaDB is used because it is fast, scalable and robust, with a rich ecosystem of storage engines, plugins and many other tools make it very versatile for a wide variety of use cases.

MariaDB is developed as open source software and as a relational database it provides an SQL interface for accessing data. The latest versions of MariaDB also include GIS and JSON features.

The MySQL data is stored in `%USERPROFILE%\mariadb_data`.
You can start the MySQL server by running `mariadb_start` in the _Bench_ shell.
You can stop the MySQL server by running `mariadb_stop` in the _Bench_ shell.
The initial password for _root_ is `bench`.

**Warning:** _It is not advised to install a MariaDB server with a MySQL server
side-by-side in the same Bench environment
because the executables (e.g. `mysqld.exe`) are named the same._

* ID: `Bench.MariaDB`
* Tags:
    + cli
    + server
    + database
    + sql
    + relational
* Website: <https://www.mariadb.org/>
* Docs:
    + Learn: <https://mariadb.org/learn/>
    + Useful Queries: <https://mariadb.com/kb/en/library/useful-mariadb-queries/>
    + Documentation: <https://mariadb.com/kb/en/library/documentation/>
* License: GPL-2.0
* VersionMajor: 10
* VersionMinor: 5
* Revision: 5
* Version: `$:VersionMajor$.$:VersionMinor$.$:Revision$`
* Url32Bit: `https://downloads.mariadb.org/f/mariadb-$:Version$/win32-packages/$:ArchiveName$?serve`
* Url64Bit: `https://downloads.mariadb.org/f/mariadb-$:Version$/winx64-packages/$:ArchiveName$?serve`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath32Bit: `mariadb-$:Version$-win32`
* ArchivePath64Bit: `mariadb-$:Version$-winx64`
* Path: `bin`
* Exe: `bin\mysqld.exe`
* MariaDbServerOptionFile: `$HomeDir$\mariadb.cnf`
* MariaDbDataDir: `$HomeDir$\mariadb_data`
* Environment:
    + `MARIADB_SERVER_OPTION_FILE`: `$:MariaDbServerOptionFile$`
    + `MARIADB_DATA`: `$:MariaDbDataDir$`
* Launcher: MariaDB Server
* LauncherExecutable: `bin\mariadb_server.cmd`
* VersionCheckUrl: <https://downloads.mariadb.org/>
* VersionCheckXPath: `//div[@class='buttons']/descendant::a`
* VersionCheckPattern: `Download (?<Version>[\d\.]+) Stable`

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
    + Online Docs: <https://www.postgresql.org/docs/$:Version$/static/index.html>
    + Offline Docs: `file:///$:Dir$\doc\postgresql\html\index.html`
* VersionMajor: 16
* VersionMinor: 2
* Version: $:VersionMajor$.$:VersionMinor$
* Only64Bit: true
* Url: `http://get.enterprisedb.com/postgresql/$:ArchiveName$`
* ArchiveName: `postgresql-$:Version$-1-windows-x64-binaries.zip`
* ArchivePath: `pgsql`
* Dir: `bench\postgres`
* Path: `bin`
* Exe: `bin\postgres.exe`
* Launcher: `PostgreSQL Server`
* LauncherExecutable: `bin\postgresql_server.cmd`
* PostgreSqlDataDir: `$HomeDir$\pg_data_$:VersionMajor$`
* PostgreSqlLogFile: `$HomeDir$\pg_$:VersionMajor$.log`
* Environment:
	+ `PGDATA`: `$:PostgreSqlDataDir$`
	+ `PG_LOG`: `$:PostgreSqlLogFile$`
* VersionCheckUrl: <https://www.postgresql.org/>
* VersionCheckXPath: `//div[@class='text']/ul/li`
* VersionCheckPattern: `^(?<Version>[\d\.]+)[\s·]+(?<Date>\d{4}-\d{2}-\d{2})[\s·]+Notes$`

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
    + Documentation: <https://www.pgadmin.org/docs/pgadmin4/8.5/>
* Version: 8.5
* Dir: `$Bench.PostgreSQL:Dir$`
* Only64Bit: true
* Url64Bit: `https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v$:Version$/windows/$:ArchiveName$`
* ArchiveName32Bit: `pgadmin4-$:Version$-x86.exe`
* ArchiveName64Bit: `pgadmin4-$:Version$-x64.exe`
* ArchiveTyp: `inno`
* Dir: `bench\pgadmin`
* Path: `runtime`
* Exe: `runtime\pgAdmin4.exe`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://ftp.postgresql.org/pub/pgadmin/pgadmin4/>
* VersionCheckXPath: `//table/descendant::td[@class='n']`
* VersionCheckPattern: `^v(?<Version>[\d\.]+)/$`

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

This application needs the _Visual C++ 2015-2019 Redistributable_ [32 Bit Version](https://aka.ms/vs/16/release/VC_redist.x86.exe) or [64 Bit Version](https://aka.ms/vs/16/release/VC_redist.x64.exe) installed.

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
    + Documentation: `http://httpd.apache.org/docs/$:MainVersion$/en/`
* VersionMajor: 2
* VersionMinor: 4
* Revision: 46
* MainVersion: `$:VersionMajor$.$:VersionMinor$`
* Version: `$:MainVersion$.$:Revision$`
* VSVersion: 16
* Url: `https://www.apachelounge.com/download/VS$:VSVersion$/binaries/$:ArchiveName$`
* ArchiveName32Bit: `httpd-$:Version$-win32-VS$:VSVersion$.zip`
* ArchiveName64Bit: `httpd-$:Version$-win64-VS$:VSVersion$.zip`
* ArchivePath: `Apache$:VersionMajor$$:VersionMinor$`
* Path: `bin`
* Exe: `bin\httpd.exe`
* Launcher: Apache Web Server
* HttpdDocumentRoot: `$HomeDir$\www`
* HttpdListen: `127.0.0.1:80`
* UserConfigFile: `$HomeDir$\httpd-bench.conf`
* VersionCheckUrl: <https://www.apachelounge.com/download/>
* VersionCheckXPath: `//pre/a`
* VersionCheckPattern: `httpd-(?<Version>\d[\d\.]+)-win64-VS$:VSVersion$\.zip`

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
* Version: 3.8.9
* Url: `https://dl.bintray.com/rabbitmq/all/rabbitmq-server/$:Version$/$:ArchiveName$`
* ArchiveName: `rabbitmq-server-windows-$:Version$.zip`
* ArchivePath: `rabbitmq_server-$:Version$`
* Path: `sbin`
* Exe: `sbin\rabbitmq-server.bat`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://dl.bintray.com/rabbitmq/all/rabbitmq-server/>
* VersionCheckXPath: `/html/body/pre/a`
* VersionCheckPattern: `^(?<Version>[\d\.]+)/$`

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
* Version: 1.6.6
* Url: `https://github.com/jefyt/memcached-windows/releases/download/$:Version$_mingw/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath64Bit: `memcached-$:Version$-win64-mingw`
* ArchivePath32Bit: `memcached-$:Version$-win32-mingw`
* Path: `bin`
* Exe: `bin\memcached.exe`
* Launcher: `$:Label$`

### Redis

Redis is a very popular open-source, networked, in-memory, key-value data store
known for high performance, flexibility, a rich set of data structures,
and a simple straightforward API.

* ID: `Bench.Redis`
* Tags:
    + cli
    + server
    + cache
    + in-memory
* Website: <http://redis.io/>
* License: BSD-3-Clause
* LicenseUrl: <https://github.com/MicrosoftArchive/redis/blob/3.0/license.txt>
* Typ: `nuget-package`
* PackageName: `Redis-64`
* Path: `redis-64\tools`
* Exe: `redis-64\tools\redis-server.exe`
* Only64Bit: `true`
* Version: latest
* Launcher: `$:Label$`

### LDAP Admin

* ID: `Bench.LdapAdmin`
* Label: LDAP Admin
* Tags:
    + gui
    + ldap
    + samba
    + active directory
* License: GPL-3.0
* Website: <http://www.ldapadmin.org>
* Version: 1.8.3
* Url: `https://sourceforge.net/projects/ldapadmin/files/ldapadmin/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `LdapAdminExe-w32-$:Version$.zip`
* ArchiveName64Bit: `LdapAdminExe-w64-$:Version$.zip`
* RegistryKeys: `SOFTWARE\LdapAdmin`
* Launcher: `$:Label$`
* VersionCheckUrl: <http://www.ldapadmin.org/download/ldapadmin.html>
* VersionCheckXPath: `//table/descendant::tr/td[@class='big']`
* VersionCheckPattern: `^\s*LdapAdmin (?<Version>[\d\.]+)\s*$`

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
* Version: 2.21.0
* Url: `https://github.com/prometheus/prometheus/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.tar.gz`
* ArchivePath32Bit: `prometheus-$:Version$.windows-386`
* ArchivePath64Bit: `prometheus-$:Version$.windows-amd64`
* Launcher: `$:Label$`
* LauncherWorkingDir: `$:Dir$`
* LauncherArguments:
    + `--config.file=$HomeDir$\prometheus.yml`
    + `--storage.tsdb.path=$HomeDir$\prometheus2_data`

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
* Version: 1.2.0
* Url: `https://github.com/prometheus/pushgateway/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.tar.gz`
* ArchivePath32Bit: `pushgateway-$:Version$.windows-386`
* ArchivePath64Bit: `pushgateway-$:Version$.windows-amd64`
* Dir: `bench\pushgateway`
* Exe: `pushgateway.exe`
* Launcher: `$:Label$`
* LauncherArguments: `--web.listen-address`, `$:HostIP$:$:Port$`
* LauncherWorkingDir: `$:Dir$`
* JobName: `pushgateway`
* HostIP: localhost
* Port: 9091

### Prometheus Windows Exporter

Prometheus exporter for Windows machines using WMI

* ID: `Bench.Prometheus.WindowsExporter`
* Label: Prometheus Windows Exporter
* Tags:
    + cli
    + server
    + monitoring
    + system
    + node
* Dependencies: `Bench.Prometheus`
* Website: <https://github.com/prometheus-community/windows_exporter>
* License: MIT
* LicenseUrl: <https://github.com/prometheus-community/windows_exporter/blob/master/LICENSE>
* Version: 0.14.0
* Url: `https://github.com/martinlindhe/windows_exporter/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `windows_exporter-$:Version$-386.msi`
* ArchiveName64Bit: `windows_exporter-$:Version$-amd64.msi`
* ArchivePath: `SourceDir\windows_exporter`
* Dir: `bench\prometheus_windows`
* Exe: `windows_exporter.exe`
* Launcher: `$:Label$`
* LauncherArguments: `--collectors.enabled`, `$:Collectors$`, `--telemetry.addr`, `$:HostIP$:$:Port$`
* LauncherWorkingDir: `$:Dir$`
* JobName: `windows`
* HostIP: localhost
* Port: 9182
* Collectors: `cs,logical_disk,net,os,system,cpu`

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
* Version: 0.2.8
* Only64Bit: `true`
* Url: `https://github.com/fstab/grok_exporter/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath64Bit: `grok_exporter-$:Version$.windows-amd64`
* Dir: `bench\prometheus_grok`
* Exe: `grok_exporter.exe`
* Launcher: `$:Label$`
* LauncherArguments: `-config`, `$:ConfigFile$`
* LauncherWorkingDir: `$:Dir$`
* JobName: `grok`
* ConfigFile: `$HomeDir$\grok_config.yml`
* VersionCheckAllowPreRelease: `true`

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
* Version: 0.12.1
* Url: `https://github.com/prometheus/mysqld_exporter/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.tar.gz`
* ArchivePath32Bit: `mysqld_exporter-$:Version$.windows-386`
* ArchivePath64Bit: `mysqld_exporter-$:Version$.windows-amd64`
* Dir: `bench\prometheus_mysqld`
* Exe: `mysqld_exporter.exe`
* Launcher: `$:Label$`
* LauncherArguments: `--web.listen-address=$:HostIP$:$:Port$`, `--config.my-cnf=$Home$\.my.cnf`
* LauncherWorkingDir: `$:Dir$`
* JobName: `mysql`
* Port: 9104
* HostIP: localhost

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
* Version: 0.29.0
* Url: `https://github.com/kbudde/rabbitmq_exporter/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.tar.gz`
* ArchivePath32Bit: `rabbitmq_exporter-$:Version$.windows-386`
* ArchivePath64Bit: `rabbitmq_exporter-$:Version$.windows-amd64`
* Dir: `bench\prometheus_rabbitmq`
* Exe: `rabbitmq_exporter.cmd`
* Launcher: `$:Label$`
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
* Version: 0.7.0
* Url: `https://github.com/prometheus/memcached_exporter/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.tar.gz`
* ArchivePath32Bit: `memcached_exporter-$:Version$.windows-386`
* ArchivePath64Bit: `memcached_exporter-$:Version$.windows-amd64`
* Dir: `bench\prometheus_memcached`
* Exe: `memcached_exporter.exe`
* Launcher: `$:Label$`
* LauncherWorkingDir: `$:Dir$`
* LauncherArguments: `--memcached.address`, `$:MemcachedAddress$`, `--web.listen-address`, `127.0.0.1:$:Port$`
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
* Version: 7.2.0
* Only64Bit: `true`
* Url: `https://dl.grafana.com/oss/release/$:ArchiveName$`
* ArchiveName64Bit: `grafana-$:Version$.windows-amd64.zip`
* ArchivePath: `grafana-$:Version$`
* Path: `bin`
* Exe: `bin\grafana-server.exe`
* DataDir: `$HomeDir$\grafana`
* Launcher: `$:Label$`
* LauncherWorkingDir: `$:Dir$`
* VersionCheckUrl: <https://grafana.com/grafana/download?platform=windows>
* VersionCheckXPath: `//div[@class='download-info-table']/descendant::select/option`
* VersionCheckPattern: `^(?<Version>[\d\.]+)$`

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
* Version: 2.9.6942
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
* VersionCheckUrl: <https://miktex.org/download>
* VersionCheckXPath: `//div[@id='portable']/descendant::td`
* VersionCheckPattern: `^miktex-portable-(?<Version>[\d\.]+)\.exe$`

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
* Version: 2.19.2
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
* Website: <http://www.jabref.org>
* License: MIT
* LicenseUrl: <https://github.com/JabRef/jabref/blob/master/LICENSE.md>
* Docs:
    + Help: <http://help.jabref.org/en/>
    + FAQ: <http://www.jabref.org/faq/>
* Version: 5.1
* Url: `https://github.com/JabRef/jabref/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `JabRef-$:Version$-portable_windows.zip`
* ArchivePath: `JabRef`
* Launcher: `$:Label$`
* LauncherIcon: `JabRef.ico`

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
* Launcher: `$:Label$`
* VersionCheckUrl: <https://sourceforge.net/projects/texniccenter/files/TeXnicCenter/>
* VersionCheckXPath: `//table[@id='files_list']/descendant::th/a/span[@class='name']`
* VersionCheckPattern: `^(?<Version>[\d\.]+) Stable$`

### Ghostscript

An interpreter for the PostScript language and for PDF.

* ID: `Bench.Ghostscript`
* Tags:
    + cli
    + pdf
    + dtp
* Website: <https://www.ghostscript.com/>
* License: AGPL-3.0
* VersionMajor: 9
* VersionMinor: 531
* CompactVersion: `gs$:VersionMajor$$:VersionMinor$`
* Version: `$:VersionMajor$.$:VersionMinor$`
* Url: `https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/$:CompactVersion$/$:ArchiveName$`
* ArchiveName32Bit: `$:CompactVersion$w32.exe`
* ArchiveName64Bit: `$:CompactVersion$w64.exe`
* Path: `bin`
* Exe32Bit: `bin\gswin32.exe`
* Exe64Bit: `bin\gswin64.exe`
* VersionCheckString: $:CompactVersion$
* VersionCheckIgnore: `gs925rc1`
* Launcher: `$:Label$`

### Scribus

Scribus is a page layout program, available for a lot of operating systems.
Since its humble beginning in the spring of 2001, Scribus has evolved into
one of the premier Open Source desktop applications.

* ID: `Bench.Scribus`
* Dependencies: `Bench.Ghostscript`
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
* Version: 1.4.8
* Url: `https://sourceforge.net/projects/scribus/files/scribus/$:Version$/$:ArchiveName$`
* ArchiveName: `scribus-$:Version$-windows.exe`
* Register: `false`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://sourceforge.net/projects/scribus/files/scribus/>
* VersionCheckXPath: `//table[@id='files_list']/descendant::th/a/span[@class='name']`
* VersionCheckPattern: `^(?<Version>[\d\.]+)$`

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
* Website: <http://lesscss.org>
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
* Version: 0.145.0
* Url: `https://github.com/gohugoio/hugo/releases/download/v$:Version$/$:ArchiveName$`
* Only64Bit: `true`
* ArchiveName64Bit: `hugo_extended_withdeploy_$:Version$_windows-amd64.zip`

### wk&lt;html&gt;topdf

Convert HTML to PDF (or image) using Webkit (QtWebKit)

* ID: `Bench.WkHtmlToPdf`
* Tags:
    + cli
    + web
    + html
    + pdf
* Website: <https://wkhtmltopdf.org>
* License: LGPL-3.0
* Version: 0.12.6-1
* Url: <https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/$:ArchiveName$>
* ArchiveName32Bit: `wkhtmltox-$:Version$.mxe-cross-win32.7z`
* ArchiveName64Bit: `wkhtmltox-$:Version$.mxe-cross-win64.7z`
* ArchivePath: `wkhtmltox`
* Path: `bin`
* Exe: `bin\wkhtmltopdf.exe`

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
* Launcher: `$:Label$`

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
* Website: <https://imagemagick.org/>
* Docs:
    + Lokale Website: `$:Dir$\www\index.html`
    + Command Line: `$:Dir$\www\command-line-processing.html`
* Version: 7.1.0-52
* License: GPL-3.0 compatible
* LicenseUrl: <https://imagemagick.org/script/license.php>
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* Only64Bit: `true`
* ArchiveName64Bit: `ImageMagick-$:Version$-portable-Q16-x64.zip`
* Exe: `magick.exe`
* IncludeCompatibilityTools: `false`
* VersionCheckUrl: <https://imagemagick.org/script/download.php>
* VersionCheckXPath: `//table/descendant::td`
* VersionCheckPattern: `^ImageMagick-(?<Version>[\d\.]+-\d+)-portable-Q16-x86\.zip$`

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
* Version: 1.3.36
* Url: `https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `GraphicsMagick-$:Version$-Q16-win32-dll.exe`
* ArchiveName64Bit: `GraphicsMagick-$:Version$-Q16-win64-dll.exe`
* ArchiveTyp: `inno`
* Dir: `bench\gm`
* Exe: `gm.exe`
* VersionCheckUrl: <https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/>
* VersionCheckXPath: `//div[@id='files']/descendant::th/a/span[@class='name']`
* VersionCheckPattern: `^(?<Version>[\d\.]+)$`

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
* Version: 5.0.1
* Only64Bit: `true`
* Url64Bit: `http://down1.mastersign.de/bench/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.7z`
* ArchivePath: `ffmpeg-$:Version$-full_build`
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
* VersionCheckUrl: <https://sourceforge.net/projects/sox/files/sox/>
* VersionCheckXPath: `//div[@id='files']/descendant::th/a/span[@class='name']`
* VersionCheckPattern: `^(?<Version>[\d\.]+)$`

### HandBrake CLI

The command line interface for the open source video transcoder.

* ID: `Bench.HandBrakeCLI`
* Tags:
    + cli
    + video
    + compression
* Website: <https://handbrake.fr>
* License: GPL-2.0
* Version: $Bench.HandBrake:Version$
* Url: `https://github.com/HandBrake/HandBrake/releases/download/$:Version$/$:ArchiveName$`
* ArchiveName64Bit: `HandBrakeCLI-$:Version$-win-x86_64.zip`
* Only64Bit: `true`
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
* Version: 1.6.1
* Url: `https://github.com/HandBrake/HandBrake/releases/download/$:Version$/$:ArchiveName$`
* ArchiveName64Bit: `HandBrake-$:Version$-x86_64-Win_GUI.exe`
* Only64Bit: `true`
* Exe: `HandBrake.exe`
* Launcher: `$:Label$`
* ~~VersionCheckUrl: <https://download.handbrake.fr/releases/>~~
* ~~VersionCheckXPath: `//pre/a`~~
* ~~VersionCheckPattern: `^(?<Version>[\d\.]+)/$`~~

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
* Version: 3.0.21
* Url32Bit: `http://get.videolan.org/vlc/$:Version$/win32/$:ArchiveName32Bit$`
* Url64Bit: `http://get.videolan.org/vlc/$:Version$/win64/$:ArchiveName64Bit$`
* ArchiveName32Bit: `vlc-$:Version$-win32.7z`
* ArchiveName64Bit: `vlc-$:Version$-win64.7z`
* ArchivePath: `vlc-$:Version$`
* Launcher: `$:Label$`
* VersionCheckUrl: <http://get.videolan.org/vlc/>
* VersionCheckXPath: `/html/body/pre/a`
* VersionCheckPattern: `^(?<Version>[\d\.]+)/$`

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
* Version: 2.44.1
* Url:`https://www2.graphviz.org/Packages/stable/windows/10/msbuild/Release/Win32/$:ArchiveName$`
* ArchiveName: `graphviz-$:Version$-win32.zip`
* ArchivePath: `Graphviz`
* Path: `bin`
* Exe: `bin\dot.exe`
* Environment:
    + `GRAPHVIZ_DOT`: `$:Exe$`
* VersionCheckUrl: <https://www2.graphviz.org/Packages/stable/windows/10/msbuild/Release/Win32/>
* VersionCheckXPath: `//ul/li/a`
* VersionCheckPattern: `^graphviz-(?<Version>[\d\.]+)-win32\.zip$`

### PlantUML

PlantUML allows to define UML diagrams with text files in a simple and intuitive language.

* ID: `Bench.PlantUML`
* Tags:
    + cli
    + gui
    + graphics
    + uml
    + diagram
    + compiler
* Dependencies: `Bench.JDK`, `Bench.Graphviz`, `Bench.ImageMagick`
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
* Launcher: `$:Label$`
* LauncherExecutable: `plantuml-gui.bat`
* LauncherIcon: `logo.ico`

* ID: `Bench.PlantUML.Pdf`
* Label: PlantUML PDF-Support
* Dependencies: `Bench.PlantUML`
* Url: `http://beta.plantuml.net/$:ArchiveName$`
* ArchiveName: `batikAndFop.zip`
* Dir: `$Bench.PlantUML:Dir$`
* SetupTestFile: `$:Dir$/fop.jar`
* Register: `false`

### Gephi

Gephi is the leading visualization and exploration software for all kinds of graphs and networks.
Gephi is open-source and free.

* ID: `Bench.Gephi`
* Tags:
    + gui
    + graph
    + data science
* Dependencies: `Bench.JDK`
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
* Launcher: `$:Label$`
* LauncherArguments: `--jdkhome`, `$Bench.JDK:Dir$`

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
* Launcher: `$:Label$`
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
* Version: 1.4.2
* Url: `http://down1.mastersign.de/bench/$:ArchiveName$`
* Only64Bit: `true`
* ArchiveName64Bit: `inkscape-$:Version$-x64.7z`
* ArchivePath64Bit: `inkscape`
* Path: `bin`
* Exe: `bin\inkscape.exe`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://inkscape.org/de/release/>
* VersionCheckXPath: `//div[@id='sidecategory']/descendant::li[contains(@class, 'active')]/a/label`
* VersionCheckPattern: `^(?<Version>[\d\.]+)$`

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
* VersionMajor: 2.10
* Version: $:VersionMajor$.32
* Url: `https://sourceforge.net/projects/portableapps/files/GIMP Portable/$:ArchiveName$`
* ArchiveName: `GIMPPortable_$:Version$.paf.exe`
* ArchivePath: `App/gimp`
* Exe: `bin\gimp-$:VersionMajor$.exe`
* Register: `false`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://sourceforge.net/projects/portableapps/files/GIMP%20Portable/>
* VersionCheckXPath: `//th/a/span[@class='name']`
* VersionCheckPattern: `GIMPPortable_(?<Version>[\d\.]+)\.paf\.exe`

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
* Launcher: `$:Label$`

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
* Version: 12.06
* Url: `http://www.sno.phy.queensu.ca/~phil/exiftool/$:ArchiveName$`
* ArchiveName: `exiftool-$:Version$.zip`
* VersionCheckUrl: <http://www.sno.phy.queensu.ca/~phil/exiftool/>
* VersionCheckXPath: `//blockquote/descendant::a`
* VersionCheckPattern: `^exiftool-(?<Version>[\d\.]+?)\.zip$`

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
* Version: 1.2.2
* Url: `https://github.com/LMMS/lmms/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName32Bit: `lmms-$:Version$-win32.exe`
* ArchiveName64Bit: `lmms-$:Version$-win64.exe`
* Register: `false`
* Launcher: `$:Label$`

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
* Version: 3.2.2
* Url: `http://sonic-pi.net/files/releases/v$:Version$/$:ArchiveName$`
* ArchiveName64Bit: `sonic-pi-for-win-x64-portable-v$:Version$.paf.exe`
* Only64Bit: `true`
* ArchivePath: `App\Sonic Pi`
* Exe: `app\gui\qt\build\release\sonic-pi.exe`
* Register: `false`
* RegistryKeys: `Software\sonic-pi.net`
* Launcher: `$:Label$`
* VersionCheckUrl: <http://sonic-pi.net/files/releases/>
* VersionCheckXPath: `/html/body/pre/a`
* VersionCheckPattern: `^v(?<Version>[\d\.]+)/$`

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
* Launcher: `$:Label$`
* VersionCheckUrl: <https://sourceforge.net/projects/camstudio/files/stable/>
* VersionCheckXPath: `//div[@id='files']/descendant::th/a/span[@class='name']`
* VersionCheckPattern: `^CamStudio_Setup_(?<Version>[\d\.\-_a-z]+?)\.exe$`
* VersionCheckString: `$:Release$`

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
* LicenseUrl: <https://github.com/obsproject/obs-studio/blob/master/COPYING>
* Version: 31.0.3
* Url: `https://github.com/obsproject/obs-studio/releases/download/$:Version$/$:ArchiveName$`
* Only64Bit: `true`
* ArchiveName64Bit: `OBS-Studio-$:Version$-Windows.zip`
* Path64Bit: `bin\64Bit`
* Exe64Bit: `bin\64Bit\obs64.exe`
* Launcher: `$:Label$`
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
* Launcher: `$:Label$`
* VersionCheckUrl: <https://sourceforge.net/projects/avidemux/files/avidemux/>
* VersionCheckXPath: `//div[@id='files']/descendant::th/a/span[@class='name']`
* VersionCheckPattern: `^(?<Version>[\d\.]+)$`
* VersionCheckIgnore: `2.7.2`, `2.7.3`

Currently there is no way known, to extract the new installer files since 2.7.2.

* ~~Version: 2.7.6~~
* ~~Url32Bit: `https://sourceforge.net/projects/avidemux/files/avidemux/$:Version$/$:ArchiveName$`~~
* ~~Url64Bit: `https://sourceforge.net/projects/avidemux/files/avidemux/$:Version$/Avidemux_$:Version$%20VC%2B%2B%2064bits%20.exe`~~

### OpenShot

We designed OpenShot Video Editor to be an easy to use, quick to learn, and surprisingly powerful video editor.

* ID: `Bench.OpenShot`
* Tags:
    + gui
    + video
* Website: <https://www.openshot.org>
* License: GPL-3.0
* Version: 3.1.1
* Only64Bit: true
* Url: `https://github.com/OpenShot/openshot-qt/releases/download/v$:Version$/$:ArchiveName$`
* ArchiveName: `OpenShot-v$:Version$-x86_64.exe`
* ArchiveTyp: `inno`
* Register: false
* Exe: `launch-win.bat`
* Launcher: `$:Label$`
* LauncherIcon: `openshot-qt.exe`
* LauncherWorkingDir: `$:Path$`

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
* Version: 2022.02
* Website: <http://meshlab.sourceforge.net/>
* License: GPL-3.0
* LicenseUrl: <https://raw.githubusercontent.com/cnr-isti-vclab/meshlab/master/LICENSE.txt>
* Url: `https://github.com/cnr-isti-vclab/meshlab/releases/download/MeshLab-$:Version$/$:ArchiveName$`
* ArchiveName: `MeshLab$:Version$-windows.zip`
* Exe: `meshlab.exe`
* Launcher: `$:Label$`

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
    + Python API: <https://docs.blender.org/api/$:Version$/>
* MajorVersion: 4.0
* MinorVersion: 2
* Version: $:MajorVersion$.$:MinorVersion$
* Only64Bit: true
* Url: `http://download.blender.org/release/Blender$:MajorVersion$/$:ArchiveName$`
* ArchiveName: `$:ArchivePath$.zip`
* ArchivePath64Bit: `blender-$:Version$-windows-x64`
* Launcher: `$:Label$`
* VersionCheckUrl: <https://www.blender.org/download/>
* VersionCheckXPath: `//div[@id='windows']/a/@href`
* VersionCheckPattern: `blender-(?<Version>\d[\d\.]+[a-z]?)-windows(?:32|64).msi`
* VersionCheckString: `$:Version$`

### FreeCAD

* ID: `Bench.FreeCAD`
* Tags:
    + gui
    + 3d
    + cad
    + python
* Version: `$:MajorVersion$.$:MinorVersion$.$:Revision$`
* MajorVersion: 0
* MinorVersion: 20
* Revision: 2
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
* ArchiveName64Bit: `FreeCAD-$:Version$-WIN-x64-portable-3.zip`
* Only64Bit: `true`
* ArchivePath: `FreeCAD-portable`
* Exe: `bin\freecad.exe`
* Launcher: `$:Label$`

### PrusaSlicer

* ID: `Bench.PrusaSlicer`
* Tags:
    + gui
    + 3d
    + 3d-print
* Version: 2.9.2
* Website: <https://www.prusa3d.com/prusaslicer/>
* License: AGPL-3.0
* LicenseUrl: <https://raw.githubusercontent.com/prusa3d/PrusaSlicer/master/LICENSE>
* Docs:
    + Documentation: <https://help.prusa3d.com/article/general-info_1910>
    + Downloads: <https://github.com/prusa3d/PrusaSlicer/releases>
* Url: `https://github.com/prusa3d/PrusaSlicer/releases/download/version_$:Version$/$:ArchiveName$`
* Only64Bit: `true`
* ArchivePath: `PrusaSlicer-$:Version$`
* ArchiveName: `$:ArchivePath$-win64.zip`
* Exe: `prusa-slicer.exe`
* Launcher: `$:Label$`
