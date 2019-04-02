# Zulu JDK Homebrew Casks


## Installation:

```bash
brew tap mdogan/zulu
brew cask install <name>
```

## Versions

| JDK | Cask Name |
|--|--|
| OpenJDK7 | `zulu-jdk7` |
| OpenJDK8 | `zulu-jdk8` |
| OpenJDK11 | `zulu-jdk11` |
| OpenJDK12 | `zulu-jdk12` |


### Warning

`sha256` of the casks are not verified, because calculating the sha256 checksum will be a double
work for me and Azul provides `md5` not `sha256` on the downloads page.
