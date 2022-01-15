# SwiftUIRouter.

Using a UINavigationController within a SwiftUI.
The navigation bar is not used, the control can be carried out using buttons and models.   
   
The swipe gesture works.

## Installation

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding SwiftUIRouter as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift

//..

dependencies: [
    .package(url: "https://github.com/cbepxbeo/swift-ui-router.git", branch: "main")
]

//..

.target(
    name: "Your package",
    dependencies: [
        .product(name: "SwiftUIRouter", package: "swift-ui-router")
    ]

//..

```

## Usage

```swift

import SwiftUIRouter

struct RootView: View {
    var body: some View {
        Router{
            MyView()
        }
    }
}

struct MyView: View {
    @EnvironmentObject var routingController: RoutingController
    
    var body: some View {
         Button("Go to destination"){
            self.routingController.push {
                DestinationView()
            }
        }
    }
}

```
