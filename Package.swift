// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "STPopup",
  platforms: [
    .iOS(.v12)
  ],
  products: [
    .library(
      name: "STPopup",
      targets: ["STPopupSwift", "STPopupObjc"]
    )
  ],
  targets: [
    .target(
      name: "STPopupSwift",
      dependencies: [
        "STPopupObjc"
      ],
      path: "Sources/STPopupSwift"
    ),
    .target(
      name: "STPopupObjc",
      path: "Sources/STPopupObjc",
      publicHeadersPath: "include",
      cSettings: [
        .headerSearchPath(".")
      ]
    ),
  ],
  cxxLanguageStandard: .gnucxx11
)
