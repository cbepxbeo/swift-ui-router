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
<b>Put router in root view</b>
```swift

import SwiftUI
import SwiftUIRouter

struct RootView: View {
    var body: some View {
        Router{
            ExampleView()
        }
    }
}

```
### With router links
<b>Text as label</b>

```swift

struct ExampleView: View {
    var body: some View {
        VStack{
            Text("Title")
            RouterLink("Text") {
                DestinationView()
            }
        }
    }
}

struct DestinationView: View {
    var body: some View {
        Color.green
    }
}

```
<p align="center">
<img src="https://github.com/cbepxbeo/resorces/blob/d7a10ce3814753bc274601b6672e65dafa62217c/resources/swift-ui-router/media/router_link_label_text.gif" width="220" alt="RouterLink (Text as Label)">
</p>

<b>Custom label</b>
```swift
struct ExampleView: View {

    func makeLabel() -> some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(width: 120, height: 60)
            Text("Text")
                .foregroundColor(.yellow)
        }
    }
    
    var body: some View {
        VStack{
            Text("Title")
            RouterLink(self.makeLabel){
                DestinationView()
            }
        }
    }
}

```

<p align="center">
<img src="https://github.com/cbepxbeo/resorces/blob/947a222ebff6aee58fe7820e2435d7bb29b926db/resources/swift-ui-router/media/router_link_custom_label.gif" width="220" alt="RouterLink (Custom Label)">
</p>

<b>Button style</b>

```swift

struct ExampleView: View {
    
    var body: some View {
        VStack{
            Text("Title")
            RouterLink("Text"){
                DestinationView()
            }
            .buttonStyle(ExampleButtonStyle())
        }
    }
}


struct ExampleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.blue)
                .frame(width: 140, height: 50)
            configuration.label
                .foregroundColor(.white)
        }
        .opacity(configuration.isPressed ? 0.6 : 1)
    }
}

```

<p align="center">
<img src="https://github.com/cbepxbeo/resorces/blob/4e032725a5dae686bb3c02eb7e30ffa44a284702/resources/swift-ui-router/media/router_link_button_style.gif" width="220" alt="RouterLink (Custom Label)">
</p>


### With router controller

```swift

struct ExampleView: View {
    
    @EnvironmentObject var routingController: RoutingController
    
    var body: some View {
        VStack{
            Text("ExampleView")
            Button("To destination view"){
                self.routingController.push {
                    DestinationView()
                }
            }
        }
    }
}

struct DestinationView: View {
    
    @EnvironmentObject var routingController: RoutingController
    
    var body: some View {
        VStack{
            Text("ExampleView")
            Button("Back"){
                self.routingController.pop()
            }
        }
    }
}

```


<p align="center">
<img src="https://github.com/cbepxbeo/resorces/blob/aef1576767043f2292b8081c52df3d1c59574af4/resources/swift-ui-router/media/use_routing_controller.gif" width="220" alt="RouterLink (Custom Label)">
</p>

### Use router controller methods with transition.

```swift

struct ExampleView: View {
    
    @EnvironmentObject var routingController: RoutingController
    
    var body: some View {
        VStack{
            Text("ExampleView")
            Button("To destination view"){
                self.routingController.push(
                    transition: .fromBottom,
                    type: .reveal,
                    duration: 1.5) {
                        DestinationView()
                }
            }
        }
    }
}

struct DestinationView: View {
    
    @EnvironmentObject var routingController: RoutingController
    
    var body: some View {
        VStack{
            Text("ExampleView")
            Button("Back"){
                self.routingController.pop(
                    transition: .fromTop,
                    duration: 2
                )
            }
        }
    }
}

```

<p align="center">
<img src="https://github.com/cbepxbeo/resorces/blob/a854f7d375b9e782e202de622564114b09460988/resources/swift-ui-router/media/routing_controller_methods_with_transition.gif" width="220" alt="RouterLink (Custom Label)">
</p>


### Use external router controller.

```swift

//Own class that accepts the protocol

final class ExRoutingController: ExternalController, ObservableObject {
   weak var routingController: RoutingController?
}

//Or own class, inherited from the default class

final class ExRoutingController: ExternalRoutingController {}

//Or just use the default class that comes with the package

struct RootView: View {
    
    @StateObject var exRoutingController: ExRoutingController = .init()
    
    var body: some View {
        VStack{
            VStack{
                Button("push") {
                    self.exRoutingController.push {
                        DestinationView()
                    }
                }
                Button("pop") {
                    self.exRoutingController.pop()
                }
                Button("pop to root") {
                    self.exRoutingController.popToRootView()
                }
            }
            .frame(height: 200)
            Router(externalController: self.exRoutingController){
                ExampleView()
            }
        }
        .ignoresSafeArea()
    }
}

```

<p align="center">
<img src="https://github.com/cbepxbeo/resorces/blob/b7e8bc58f943f45ec290947b5cf5772cfce0e87b/resources/swift-ui-router/media/external_routing_controller.gif" width="220" alt="RouterLink (Custom Label)">
</p>

