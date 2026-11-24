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
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.3.0/spm/macos/SwitchboardSDK.xcframework.zip",
            checksum: "3f75659fe2a4a99bc07cad4e75c968d3916d4cf7143aedb7fdfb1d4ac5d7660d"
        ),
        .binaryTarget(
            name: "SwitchboardAudioEffects",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.3.0/spm/macos/SwitchboardAudioEffects.xcframework.zip",
            checksum: "f774a155f04088f64bc665afd81c6eb70a8abf67bfe38cfca7d6e552b8cf4168"
        ),
        .binaryTarget(
            name: "SwitchboardLLM",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.3.0/spm/macos/SwitchboardLLM.xcframework.zip",
            checksum: "6ae5c72ade5b0d179d39403faaa959e8e98893bc2cc89c32aeea30fea69e6b49"
        ),
        .binaryTarget(
            name: "SwitchboardOnnx",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.3.0/spm/macos/SwitchboardOnnx.xcframework.zip",
            checksum: "4ab55d29664b9f36e733078241e8928379f5f176c8b90b041703536d53da7fa8"
        ),
        .binaryTarget(
            name: "SwitchboardOpenAI",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.3.0/spm/macos/SwitchboardOpenAI.xcframework.zip",
            checksum: "2ea51365110e0866908572be3af02a37b25b3bdb5051c4f3f448119a4d4bfe1b"
        ),
        .binaryTarget(
            name: "SwitchboardRNNoise",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.3.0/spm/macos/SwitchboardRNNoise.xcframework.zip",
            checksum: "758a1d24b0819a1bb7fac439b750895c048c9ea0e48b8f6aafe954bff97e8389"
        ),
        .binaryTarget(
            name: "SwitchboardSherpa",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.3.0/spm/macos/SwitchboardSherpa.xcframework.zip",
            checksum: "c537382b356544bdf574bf34218adb55087f71298e027d0d31c7ba618eee8bb2"
        ),
        .binaryTarget(
            name: "SwitchboardSileroVAD",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.3.0/spm/macos/SwitchboardSileroVAD.xcframework.zip",
            checksum: "877218ff5ac3f4045c42c728ee16106ddb9a945e944c74003dcf4f2764767571"
        ),
        .binaryTarget(
            name: "SwitchboardSmartTurn",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.3.0/spm/macos/SwitchboardSmartTurn.xcframework.zip",
            checksum: "11b5306cd78986b6c6aa9d2263f2fe61be8005742f6fd213f248c7cce3d2541d"
        ),
        .binaryTarget(
            name: "SwitchboardSuperpowered",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.3.0/spm/macos/SwitchboardSuperpowered.xcframework.zip",
            checksum: "3dcac738f15fbcfa4aff16b42735923d6da7ab913ac533fe4cf21ed2369b8e23"
        ),
        .binaryTarget(
            name: "SwitchboardWhisper",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.3.0/spm/macos/SwitchboardWhisper.xcframework.zip",
            checksum: "63d1909870c71a6abf018e96af11725493de9614951d7b660aa7f73558f1059e"
        ),
    ]
)
