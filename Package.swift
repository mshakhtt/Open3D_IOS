// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Open3d_IOS",
    products: [
        .library(
            name: "Open3d_IOS",
            targets: [
                "LinkOpen3D",
                "Open3DSupport",
                "Assimp",
                "Faiss",
                "IrrXML",
                "JPEG",
                "jsoncpp",
                "libOpen3D_3rdparty_liblzf",
                "libOpen3D_3rdparty_qhull_r",
                "libOpen3D_3rdparty_qhullcpp",
                "libOpen3D_3rdparty_rply",
                "libOpen3D",
                "png",
                "pybind",
                "TBB",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/NumPy-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/LAPACKE-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/BLAS-LAPACK-AppStore-Workaround.git", .branch("main")),
    ],
    targets: [
        .binaryTarget(name: "Assimp", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/Assimp.xcframework.zip", checksum: "c4a4c8b9e620a32b251fd0c10ce1dd12234f78397d706a795f2e94c802d566db"),
        .binaryTarget(name: "Faiss", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/Faiss.xcframework.zip", checksum: "aa691d0c0923a0db8995afd9cc5f5c285efc0cb46279c62d89fba13e36226e34"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/IrrXML.xcframework.zip", checksum: "e937467fcc14ba4872ee8cc18f1ac57c9c4a59e40f2803529d22a385fada2b76"),
        .binaryTarget(name: "JPEG", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/JPEG.xcframework.zip", checksum: "948bc716899ebf11d584afd180b4b75ff4fefd33f3533cb3c4cdb28e64a2a512"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/jsoncpp.xcframework.zip", checksum: "2cafbeb7f36046f846523a90226752cda4c53f31557b85bf205f167c4f3cc325"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "8488e8372fa1763e92d125793b6297a48ce677fcd42f4ab673263fc063a84d8d"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "41dd0a09ed427c9b76bae4bfc54206a2c4f378e8f8da8b79e8c33460d7c97d23"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "77bf3ea66cf01c058c1faaf213a3b39a883f3feb66f39407584c89256d3e69d5"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "09ffa325bf2a76b27c692a8b6be6dfb5a912aa3fc53413d2405e9e50b121d451"),
        .binaryTarget(name: "libOpen3D", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/libOpen3D.a.xcframework.zip", checksum: "a519a07107f29cc5d673e66ff5dc6c501fa387014886d0073cb764864d359de5"),
        .binaryTarget(name: "png", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/png.xcframework.zip", checksum: "c7a96b56ed7dc9a69982f9b60d5a86b41ae3f3c4d7faa62dfd2b0e08a39ffe20"),
        .binaryTarget(name: "pybind", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/pybind.a.xcframework.zip", checksum: "9cccd64fac1b22ff09527a7833cb08beeaaa78d4e57df07de91de5153c2a3648"),
        .binaryTarget(name: "TBB", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/TBB.xcframework.zip", checksum: "ec9ef16e0e39622f04a0268dafc59c3adb8a8b35c39122d3f5acc90fed7b651e"),
        .target(
            name: "LinkOpen3D",
            dependencies: [
                "NumPy-iOS",
                "LAPACKE-iOS",
                "Assimp",
                "Faiss",
                "IrrXML",
                "JPEG",
                "jsoncpp",
                "libOpen3D_3rdparty_liblzf",
                "libOpen3D_3rdparty_qhull_r",
                "libOpen3D_3rdparty_qhullcpp",
                "libOpen3D_3rdparty_rply",
                "libOpen3D",
                "png",
                "pybind",
                "TBB",
                "BLAS-LAPACK-AppStore-Workaround",
            ],
            linkerSettings: [
                .linkedLibrary("stdc++"),
            ]
        ),
        .target(
            name: "Open3DSupport",
            resources: [.copy("site-packages")]),
    ]
)
