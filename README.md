# wsl1.0-workarounds
This repository is to quickly and efficiently share scripted solutions that fix/solve some WSL bugs. One example is the fact that umask, by default is set to 0000 by default where in most distributions of Linux umask is set to 0022.

## Current included fixes
* correctly set umask in terminals
* attempts to correct some oddities when running remote vscode through wsl
  * Note that this fix does not fully address the problem.  While the terminal in VSCode has the correct umask and utilizes the standard/default Linux permissions, the explorer in WSL does not.  For example, creating a file/folder in WSL through VSCode creates the file/folder with incorrect permissions.