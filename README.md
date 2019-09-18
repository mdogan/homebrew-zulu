# Zulu JDK Homebrew Casks

[https://www.azul.com/downloads/zulu-community/](https://www.azul.com/downloads/zulu-community/?&os=macos&os-details=macOS&package=jdk)

https://www.azul.com/products/zulu-mission-control/

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
| OpenJDK13 | `zulu-jdk13` |
| Misson Control | `zulu-mc` |


### Warning

`sha256` of the casks are not verified, because calculating the sha256 checksum will be a double
work for me and Azul provides `md5` not `sha256` on the downloads page.
