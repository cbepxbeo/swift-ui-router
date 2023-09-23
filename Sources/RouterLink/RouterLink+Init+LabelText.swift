/*
 
 Project: SwiftUIRouter
 File: RouterLink+Init+LabelText.swift
 Created by: Egor Boyko
 Date: 04.06.2023
 Last Fix: 04.06.2023
 Version: 1.0.4
 
 Status: #Complete | #Decorated
 
 */

import SwiftUI

extension RouterLink where Label == Text{
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
    ///- Parameter tag: Tag of the view to which the transition will be made.
    ///- Parameter label: Link label.
    ///- Parameter destination: Destination View.
    ///- Parameter handler: Handling the situation with a tag that already exists.
    ///- Warning: Handle the situation with an already existing tag.
    public init(
        tag: Tag,
        _ label: String,
        _ destination: @escaping () -> Destination,
        handler: @escaping (_ routingController: RoutingController, _ error: Error?) -> ()){
            self.init(
                tag: tag,
                label: { Text(label) },
                option: nil,
                moveToTagHandler: .init(handler),
                destination: .init(destination)
            )
        }
    
    ///Creating a router link to go to view that can be tagged. With text label.
    ///
    ///     RouterLink(replacingTag: "your tag", "Label") {
    ///         DestinationView()
    ///     }
    ///
    ///- Parameter replacingTag: Tag of the view to which the transition will be made.
    ///- Parameter label: RouterLink label.
    ///- Parameter destination: Destination View.
    ///- Warning: Overriding an existing tag.
    public init(
        replacingTag: Tag,
        _ label: String,
        _ destination: @escaping () -> Destination){
            self.init(
                tag: replacingTag,
                label: { Text(label) },
                option: nil,
                moveToTagHandler: nil,
                destination: .init(destination)
            )
        }
}
