// swift-tools-version:5.3
import PackageDescription

// Unlike the iOS manifest there are no separate llama/whisper binary targets: on macOS
// a versioned framework bundle nests its dependencies in its own Frameworks/ directory
// with @loader_path/Frameworks on the rpath, so they ship inside their parent
// xcframework.
let package = Package(
    name: "SwitchboardSDK",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .library(name: "SwitchboardSDK", targets: ["SwitchboardSDK"]),
        .library(name: "SwitchboardAudioEffects", targets: ["SwitchboardAudioEffects"]),
        .library(name: "SwitchboardLLM", targets: ["SwitchboardLLM"]),
        .library(name: "SwitchboardOnnx", targets: ["SwitchboardOnnx"]),
        .library(name: "SwitchboardOpenAI", targets: ["SwitchboardOpenAI"]),
        .library(name: "SwitchboardRNNoise", targets: ["SwitchboardRNNoise"]),
        .library(name: "SwitchboardSherpa", targets: ["SwitchboardSherpa"]),
        .library(name: "SwitchboardSileroVAD", targets: ["SwitchboardSileroVAD"]),
        .library(name: "SwitchboardSmartTurn", targets: ["SwitchboardSmartTurn"]),
        .library(name: "SwitchboardSuperpowered", targets: ["SwitchboardSuperpowered"]),
        .library(name: "SwitchboardWhisper", targets: ["SwitchboardWhisper"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "SwitchboardSDK",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardSDK.xcframework.zip",
            checksum: "848500c20bc634e29fb5b0df11eaa50d1f3ea5a0a96aae38ceb8c2e6a205edce"
        ),
        .binaryTarget(
            name: "SwitchboardAudioEffects",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardAudioEffects.xcframework.zip",
            checksum: "978f4d3d4d3ce336273ae75806b826984588ad60579191f5b15acacc32588fc6"
        ),
        .binaryTarget(
            name: "SwitchboardLLM",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardLLM.xcframework.zip",
            checksum: "42dc3523bcac729503c996add0c6f8272d3291eeb9f366578b5d6fbe221d8c37"
        ),
        .binaryTarget(
            name: "SwitchboardOnnx",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardOnnx.xcframework.zip",
            checksum: "0a1d42d9fce6206baec52610aea5dbfa6fb0478809fae7ea968f9b378c693319"
        ),
        .binaryTarget(
            name: "SwitchboardOpenAI",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardOpenAI.xcframework.zip",
            checksum: "bd016df8477c683fb7bfc7d174b8261cce76b2e46d796a280cafa5b051449257"
        ),
        .binaryTarget(
            name: "SwitchboardRNNoise",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardRNNoise.xcframework.zip",
            checksum: "d4ae60cadceabcba8a8f6de0a28a84b137aa3487c99793bbb42b190b45b691f8"
        ),
        .binaryTarget(
            name: "SwitchboardSherpa",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardSherpa.xcframework.zip",
            checksum: "fe3399f4c9efd67d688398a86ef830327fd36352717592bf94cd4e056f753082"
        ),
        .binaryTarget(
            name: "SwitchboardSileroVAD",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardSileroVAD.xcframework.zip",
            checksum: "e8bcaeaa4db8a915d95c1587bb1b3dfda8b3245ba5f0a366b32133d34b2adbd1"
        ),
        .binaryTarget(
            name: "SwitchboardSmartTurn",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardSmartTurn.xcframework.zip",
            checksum: "8cc3e30ff18388f75e8ec9e50b25995f12725e3ec84e6534f3cad105e63f0e3c"
        ),
        .binaryTarget(
            name: "SwitchboardSuperpowered",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardSuperpowered.xcframework.zip",
            checksum: "af7a6cff8ec89a6906dc9bb3b6e4961a43f78cfcb8cf99eeaa499edea2bb7997"
        ),
        .binaryTarget(
            name: "SwitchboardWhisper",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardWhisper.xcframework.zip",
            checksum: "f183eb1c1f32149a6d310de488fe0684da6b4b38782d0dd2fd87dc8d8fbf001f"
        ),
    ]
)
