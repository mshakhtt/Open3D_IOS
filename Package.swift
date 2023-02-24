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
                "libOpen3D_3rdparty_liblzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "libOpen3D.a",
                "png",
                "pybind.a",
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
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "77c0df730505a01cf907f10b2950e284c312ca70ab210332c7f4f721f8fd9ab8"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "9923a472151ccf3515dab8fa9e683fea599276dcb2ceaaae583dc34f5171a5cf"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "95e1052f1fb7d908dd693f378111baec42599e63f95839aaa14237b1ad85b3f3"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "9dca3b413d6a8d2413e6a922a55408f314baa8581da87e4e8d1d1972fde617f1"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/libOpen3D.a.xcframework.zip", checksum: "310a79cd933a8055fcde9c1b46ca2190676e200e36ca4063b51dc3f8ce0f08d7"),
        .binaryTarget(name: "png", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/png.xcframework.zip", checksum: "c7a96b56ed7dc9a69982f9b60d5a86b41ae3f3c4d7faa62dfd2b0e08a39ffe20"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/mshakhtt/Open3D_IOS/releases/download/0.0.1/pybind.a.xcframework.zip", checksum: "17e9dcb32105c6e0d8532210b3a659087f7212cc449aeaa627bdba17e0d8746d"),
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
                "libOpen3D_3rdparty_liblzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "libOpen3D.a",
                "png",
                "pybind.a",
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
        .testTarget(
            name: "Open3d_IOSTests",
            dependencies: ["Open3DSupport"]),
    ]
)
