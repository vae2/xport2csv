xport2csv : Command-line tool for SAS xport file hacking
========================================================
This project is a hacked together command-line tool for cranking out CSV files
from SAS "XPORT" files (often ending in extension ".xpt"). Many public health
datasets are stored in this format.

Usage
-----

```sh
$ ./xport2csv.R data.xpt | csvlook | less -S
```

Contents
--------
- xport2csv.R : command line interface (R behind the scenes) for hacking csv
  files
