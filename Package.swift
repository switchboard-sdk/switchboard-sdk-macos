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
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.7/spm/macos/SwitchboardSDK.xcframework.zip",
            checksum: "117a7855a367dbd34a64cc52ccc6d0c09608e219cb940472bf3ae52a150f2d00"
        ),
        .binaryTarget(
            name: "SwitchboardAudioEffects",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.7/spm/macos/SwitchboardAudioEffects.xcframework.zip",
            checksum: "8df8124de9f017dfd3b6d2e598167624e6fa9ada1368f7d5a4f17f4a1c7c3053"
        ),
        .binaryTarget(
            name: "SwitchboardLLM",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.7/spm/macos/SwitchboardLLM.xcframework.zip",
            checksum: "0e63b34f0d82e553afa961ffaa699cc302636599c8a0761a655baef57a0fd41f"
        ),
        .binaryTarget(
            name: "SwitchboardOnnx",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.7/spm/macos/SwitchboardOnnx.xcframework.zip",
            checksum: "740045c5f0013678159b9821e3972b976b2cd8bc1da8d4647e1a082a34ab129a"
        ),
        .binaryTarget(
            name: "SwitchboardOpenAI",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.7/spm/macos/SwitchboardOpenAI.xcframework.zip",
            checksum: "a206076b17b70605bcda44a2a2229a665b806f9db515306c3ae6f98c3a81e6fa"
        ),
        .binaryTarget(
            name: "SwitchboardRNNoise",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.7/spm/macos/SwitchboardRNNoise.xcframework.zip",
            checksum: "9bca870789f166466775821107ce82a0bbfbf65a30514b206ac0a34f0e5a6cc2"
        ),
        .binaryTarget(
            name: "SwitchboardSherpa",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.7/spm/macos/SwitchboardSherpa.xcframework.zip",
            checksum: "ebafd5da6c5ccf6067b61135a3b400e97212667dfc3e518dbfd481a9670006bb"
        ),
        .binaryTarget(
            name: "SwitchboardSileroVAD",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.7/spm/macos/SwitchboardSileroVAD.xcframework.zip",
            checksum: "17d4aac2d74dca2020e3845cf6b86995c79f91b6768937c938d21487e0bbdc35"
        ),
        .binaryTarget(
            name: "SwitchboardSmartTurn",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.7/spm/macos/SwitchboardSmartTurn.xcframework.zip",
            checksum: "8ba357209c24fcb1a431d79b7c0305194f06e6ff8c266729200e3adbe617a3cc"
        ),
        .binaryTarget(
            name: "SwitchboardSuperpowered",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.7/spm/macos/SwitchboardSuperpowered.xcframework.zip",
            checksum: "db48ff4148f9c73d0a23b5db82643b7d0c17ef9f5e51a77504ad7393fd6b4a49"
        ),
        .binaryTarget(
            name: "SwitchboardWhisper",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.7/spm/macos/SwitchboardWhisper.xcframework.zip",
            checksum: "ff0dcb0c97139193cd588d8cf6788f11fb17c28a49949554a9a42171e6b0b515"
        ),
    ]
)
