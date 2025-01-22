# Updater

Automatically update the Cask definitions, GitHub Action workflows, and root README with new JDKs.

First, check out the `updater` directory:
```sh
cd updater
```

Next, run the application via Gradle:
```sh
./gradlew run --args='..'
```

Inspect the diff, commit the changes, and push to GitHub.
