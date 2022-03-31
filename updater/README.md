# Updater

Automatically update the Cask definitions, GitHub Action workflows, and root README with new JDKs.

First, build the application:
```
$ cd updater
$ ./gradlew assemble
```

Next, run the application pointing it at the root folder of this repository.
```
$ ./build/installDist/updater/bin/updater ..
```

Inspect the diff, commit the changes, and push to GitHub.
