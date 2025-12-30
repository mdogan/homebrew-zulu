# Updater

Automatically update the Cask definitions, GitHub Action workflows, and root README with new JDKs.

First, check out the `updater` directory:
```sh
cd updater
```

Next, run the application via Gradle:
```sh
./gradlew run
```

Finally, fix the styles with:
```sh
brew style --fix ../Casks/*.rb
```

Inspect the diff, commit the changes, and push to GitHub.
