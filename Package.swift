// swift-tools-version: 5.9
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
        .package(url: "https://github.com/iruirc/DKCamera.git", exact: "1.6.700"),
        .package(url: "https://github.com/iruirc/DKPhotoGallery.git", exact: "0.0.100"),
        .package(url: "https://github.com/iruirc/TOCropViewController.git", exact: "2.7.201"),
    ],
    targets: [
        .target(
            name: "DKImagePickerController",
            dependencies: ["DKCamera", "DKPhotoGallery", "TOCropViewController"],
            path: "Sources"),
    ]
)
