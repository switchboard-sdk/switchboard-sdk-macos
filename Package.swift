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
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.8/spm/macos/SwitchboardSDK.xcframework.zip",
            checksum: "03ab52e70f916feb3b63ce21296ea70e7c9eb6be3c6b4bb531441d4d2e0ad17b"
        ),
        .binaryTarget(
            name: "SwitchboardAudioEffects",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.8/spm/macos/SwitchboardAudioEffects.xcframework.zip",
            checksum: "6c27c0a0147a1cae9af4b16f941ee8f661013c40aff53b92fe0d9f576178030e"
        ),
        .binaryTarget(
            name: "SwitchboardLLM",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.8/spm/macos/SwitchboardLLM.xcframework.zip",
            checksum: "dad75731d004cc954d540c8e1a8fa0f2640159cbbf367a1b78c73ad435f263e7"
        ),
        .binaryTarget(
            name: "SwitchboardOnnx",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.8/spm/macos/SwitchboardOnnx.xcframework.zip",
            checksum: "e2b9c0a2b4625c337a179342c7c183645f106969a70a5f4ce9856ff6a0fec11e"
        ),
        .binaryTarget(
            name: "SwitchboardOpenAI",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.8/spm/macos/SwitchboardOpenAI.xcframework.zip",
            checksum: "ed6ab9d8a89d7a4c446a19952b60f0435e75496b036337d922fde74b92e5b40d"
        ),
        .binaryTarget(
            name: "SwitchboardRNNoise",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.8/spm/macos/SwitchboardRNNoise.xcframework.zip",
            checksum: "57b0244a2390d7dea785768fee7c307a5b27b8749e7ce3d756f1d3c5cb2e586d"
        ),
        .binaryTarget(
            name: "SwitchboardSherpa",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.8/spm/macos/SwitchboardSherpa.xcframework.zip",
            checksum: "33bc8bd6020348fa473f23fbf395664069e697d8795745a98a44c0835d1f2131"
        ),
        .binaryTarget(
            name: "SwitchboardSileroVAD",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.8/spm/macos/SwitchboardSileroVAD.xcframework.zip",
            checksum: "a21e4e30e816f80ca766ed67c49f631cf060762df3c6c83182f06aa67b894a36"
        ),
        .binaryTarget(
            name: "SwitchboardSmartTurn",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.8/spm/macos/SwitchboardSmartTurn.xcframework.zip",
            checksum: "3456fc50c1048af3162ad2bfebb53cfad551519c92db8c8cfd1be0e53a70f72b"
        ),
        .binaryTarget(
            name: "SwitchboardSuperpowered",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.8/spm/macos/SwitchboardSuperpowered.xcframework.zip",
            checksum: "5a1cb4427abfe334c1efbb0d3c1ef2bf943a465c2edb408d2777d1598d16a17f"
        ),
        .binaryTarget(
            name: "SwitchboardWhisper",
            url: "https://switchboard-sdk-public.s3.amazonaws.com/builds/release/3.2.8/spm/macos/SwitchboardWhisper.xcframework.zip",
            checksum: "0fe5155b187102ac8051ee7bdf97805f90a2b2018ecff70f1aebfd5ff0aeb7c3"
        ),
    ]
)
