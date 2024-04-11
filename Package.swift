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
        .package(url: "https://github.com/iruirc/DKCamera.git", branch("VSDC")),
        .package(url: "https://github.com/iruirc/DKPhotoGallery.git", branch("VSDC")),
        .package(url: "https://github.com/iruirc/TOCropViewController.git", branch("VSDC")),
    ],
    targets: [
        .target(
            name: "DKImagePickerController",
            dependencies: ["DKCamera", "DKPhotoGallery", "TOCropViewController"],
            path: "Sources"),
    ]
)
