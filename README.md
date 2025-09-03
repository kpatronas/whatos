# whatos

A very simple Bash function that returns a string containing the OS and the Bash version.
It can distinguish between **Linux**, **macOS**, **Git Bash**, **WSL1**, and **WSL2**.

Very useful when you want to adjust functionality of a bash script based on the running platform


## Example

```bash
chmod +x ./whatos.sh
whatos.sh

Linux - bash 5.2.32
macOS - bash 3.2.57
Git Bash - bash 5.2.15
WSL1 - bash 5.1.16
WSL2 - bash 5.1.16
```
