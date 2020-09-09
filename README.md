# homebrew-ddev-live-client

Homebrew recipe for ddev-live-client

## Updating for a New Release

When a release for the upstream [DDEV Live Client](https://github.com/drud/ddev-live-client) has been released, this repository must be updated to point to the new version.

To update, make these changes to the file at Formula/ddev-live.rb:

1. Update the version segment of the `url` variable (for example, `.../ddev-live-cli/v0.5.1/brew...` to `.../ddev-live-cli/v0.5.2/brew...`).

2. Update the version variable to match the released verison. Note that the version should not include the `v` (for example, `v0.5.2` becomes `0.5.2`).

3. Update the sha256 variable to match the digest of the referenced artifact. Access the digest by adding `.sha256.txt` to the artifact URL.

4. Commit the changes (`git commit -am "Bumping version to v0.5.2"`)

5. Push the changes (`git push origin master`)

6. Confirm that the update works (`brew upgrade ddev-live`)

The steps 1, 2, 3 and 4 are automated [by a script](./hack/update_formula.bash), example usage:
```
$ version=0.7.0 ./hack/update_formula.bash
```
