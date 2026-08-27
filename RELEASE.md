# Cutting a release

1. Run the macOS release job in `production` mode on the SDK repo. It runs
   `inv package-spm --platform macos` and uploads to
   `s3://switchboard-sdk-public/builds/release/<version>/spm-macos/`.
2. For each product, copy the value from `<Name>.xcframework.checksum.txt` in that S3
   prefix into the matching `checksum:` field in `Package.swift`, and bump the version in
   every `url:`.
3. Verify from a scratch project with no `.build` cache:
   `swift package resolve`, then build and run a macOS target that imports SwitchboardSDK.
   For SwitchboardLLM and SwitchboardWhisper the binary must actually *run*, not just
   link -- their nested dependency frameworks resolve at load time.
4. Tag the release to match the iOS package's tag. The two must not drift.

The product list comes from `modules.yaml` in the SDK repo: modules with a `macos`
platform whose visibility includes `public`.
