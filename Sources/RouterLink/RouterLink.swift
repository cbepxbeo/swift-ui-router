/*
 
 Project: SwiftUIRouter
 File: RouterLink.swift
 Created by: Egor Boyko
 Date: 15.01.2022
 Last Fix: 04.06.2023
 Version: 1.0.4
 
 Status: #Complete | #Decorated
 
 */

import SwiftUI
import SwiftUtilities

///The type that transitions to the view
///
///Creating a router link to go to view. With text label.
///
///     RouterLink("Label") {
///         DestinationView()
///     }
///
///Your transition option
///
///     RouterLink("Label") {
///         DestinationView()
///     }
///     .transition(option: .fromBottom, duration: 1)
///
///Your button style
///
///     struct ExampleButtonStyle: ButtonStyle {
///         func makeBody(configuration: Configuration) -> some View {
///             ZStack{
///                 RoundedRectangle(cornerRadius: 15)
///                     .fill(Color.blue)
///                     .frame(width: 140, height: 50)
///                 configuration.label
///                     .foregroundColor(.white)
///             }
///             .opacity(configuration.isPressed ? 0.6 : 1)
///         }
///     }
///
///     RouterLink("Label") {
///         DestinationView()
///     }
///     .buttonStyle(ExampleButtonStyle())
///
///Creating a router link to go to view. With your label.
///
///     func makeLabel() -> some View {
///         Text("Label")
///     }
///
///     //...
///
///     RouterLink(label: self.makeLabel) {
///         DestinationView()
///     }
///
///
///Creating a router link allows you to jump to the view by tag and your label.
///
///     func makeLabel() -> some View {
///         Text("Label")
///     }
///
///     //...
///
///     RouterLink(to: "your tag", label: self.makeLabel) { routingController, error in
///         if let error {
///             print(error)
///             routingController.pop()
///         }
///     }
///
///Creating a router link allows you to jump to the view by tag and text label.
///
///
///     RouterLink(to: "your tag", "Label") { routingController, error in
///         if let error {
///             print(error)
///             routingController.pop()
///         }
///     }
///
///Creating a router link using the options (back or root view) and your label.
///
///
///     RouterLink(option: .back) {
///         Image(systemName: "chevron.left")
///     }
///
///Creating a router link using the options (back or root view) and text label.
///
///     RouterLink("Back", option: .back)
///
///Creating a router link to go to view that can be tagged. With text label.
///
///     RouterLink(tag: "your tag", "Label") {
///         DestinationView()
///     } handler: { routingController, error in
///         if let error {
///             print(error)
///             routingController.push{
///                 DestinationView()
///             }
///         }
///     }
///
///     //Overriding an existing tag
///
///     RouterLink(tag: "your tag", "Label") {
///         DestinationView()
///     } handler: { routingController, error in
///         if let error {
///             print(error)
///             routingController.push(replacingTag: "your tag"){
///                 DestinationView()
///             }
///         }
///     }
///
///Creating a router link to go to view that can be tagged. With text label.
///
///     RouterLink(replacingTag: "your tag", "Label") {
///         DestinationView()
///     }
///
///
///- Note: RouterLink is not the only means of transition to a view. If necessary, you can programmatically move using the RoutingController or ExternalRoutingController.
///- Warning: Use as a child element of the Router. The degree of nesting does not matter, the very fact of the presence of the Router as a parent is important.
public struct RouterLink<Destination: View, Label: View, Tag: Hashable>: View {
    
    @EnvironmentObject var routingController: RoutingController
    
    init(
        tag: Tag?,
        label: @escaping () -> Label,
        option: RouterLinkOption?,
        moveToTagHandler: ValueWrapper<(RoutingController, Error?) -> ()>? = nil,
        destination: ValueWrapper<() -> Destination>?) {
            self.tag = tag
            self.label = label
            self.destination = destination?.value
            self.option = option
            self.moveToTagHandler = moveToTagHandler?.value
            self.transition = nil
        }
    
    let tag: Tag?
    let label: () -> Label
    let destination: (() -> Destination)?
    let option: RouterLinkOption?
    let moveToTagHandler: ((RoutingController, Error?) -> ())?
    var transition: (option: CATransitionSubtype, type: CATransitionType, duration: CGFloat)?
}

