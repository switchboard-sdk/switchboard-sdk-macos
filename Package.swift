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
            checksum: "REPLACE_WITH_SwitchboardSDK_CHECKSUM"
        ),
        .binaryTarget(
            name: "SwitchboardAudioEffects",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardAudioEffects.xcframework.zip",
            checksum: "REPLACE_WITH_SwitchboardAudioEffects_CHECKSUM"
        ),
        .binaryTarget(
            name: "SwitchboardLLM",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardLLM.xcframework.zip",
            checksum: "REPLACE_WITH_SwitchboardLLM_CHECKSUM"
        ),
        .binaryTarget(
            name: "SwitchboardOnnx",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardOnnx.xcframework.zip",
            checksum: "REPLACE_WITH_SwitchboardOnnx_CHECKSUM"
        ),
        .binaryTarget(
            name: "SwitchboardOpenAI",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardOpenAI.xcframework.zip",
            checksum: "REPLACE_WITH_SwitchboardOpenAI_CHECKSUM"
        ),
        .binaryTarget(
            name: "SwitchboardRNNoise",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardRNNoise.xcframework.zip",
            checksum: "REPLACE_WITH_SwitchboardRNNoise_CHECKSUM"
        ),
        .binaryTarget(
            name: "SwitchboardSherpa",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardSherpa.xcframework.zip",
            checksum: "REPLACE_WITH_SwitchboardSherpa_CHECKSUM"
        ),
        .binaryTarget(
            name: "SwitchboardSileroVAD",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardSileroVAD.xcframework.zip",
            checksum: "REPLACE_WITH_SwitchboardSileroVAD_CHECKSUM"
        ),
        .binaryTarget(
            name: "SwitchboardSmartTurn",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardSmartTurn.xcframework.zip",
            checksum: "REPLACE_WITH_SwitchboardSmartTurn_CHECKSUM"
        ),
        .binaryTarget(
            name: "SwitchboardSuperpowered",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardSuperpowered.xcframework.zip",
            checksum: "REPLACE_WITH_SwitchboardSuperpowered_CHECKSUM"
        ),
        .binaryTarget(
            name: "SwitchboardWhisper",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.6/spm/macos/SwitchboardWhisper.xcframework.zip",
            checksum: "REPLACE_WITH_SwitchboardWhisper_CHECKSUM"
        ),
    ]
)
