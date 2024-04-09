// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DKImagePickerController",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "DKImagePickerController",
            type: .dynamic,
            targets: ["DKImagePickerController"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zhangao0086/DKCamera", .branch("master")),
        .package(url: "https://github.com/zhangao0086/DKPhotoGallery", .branch("master")),
        .package(url: "https://github.com/TimOliver/TOCropViewController", from: "2.6.0"),
    ],
    targets: [
        .target(
            name: "DKImagePickerController",
            dependencies: ["DKCamera", "DKPhotoGallery", "TOCropViewController"],
            path: "Sources"),
    ]
)
