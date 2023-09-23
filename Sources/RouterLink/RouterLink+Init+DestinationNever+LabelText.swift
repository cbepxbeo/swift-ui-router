/*
 
 Project: SwiftUIRouter
 File: RouterLink+Init+DestinationNever+LabelText.swift
 Created by: Egor Boyko
 Date: 04.06.2023
 Last Fix: 04.06.2023
 Version: 1.0.4
 
 Status: #Complete | #Decorated
 
 */

import SwiftUI

extension RouterLink where Destination == Never, Label == Text {
    ///Creating a router link allows you to jump to the view by tag and text label.
    ///
    ///     RouterLink(to: "your tag", "Label") { routingController, error in
    ///         if let error {
    ///             print(error)
    ///             routingController.pop()
    ///         }
    ///     }
    ///
    ///- Parameter to: Tag assigned to the view to which you need to go.
    ///- Parameter label: RouterLink text label.
    ///- Parameter handler: Handling the situation with a non-existent tag.
    ///- Warning: Handle the situation with a non-existent tag.
    public init(
        to: Tag,
        _ label: String,
        handler: @escaping (_ routingController: RoutingController, _ error: Error?) -> ()){
            self.init(
                tag: to,
                label: { Text(label) },
                option: nil,
                moveToTagHandler: .init(handler),
                destination: nil
            )
        }
}
