/*
 
 Project: SwiftUIRouter
 File: RouterLink+Init.swift
 Created by: Egor Boyko
 Date: 07.06.2023
 Last Fix: 07.06.2023
 Version: 1.0.5
 
 Status: #Complete | #Decorated
 
 */

import SwiftUI

extension RouterLink{
    ///Creating a router link to go to view that can be tagged. With your label.
    ///
    ///     func makeLabel() -> some View {
    ///         Text("Label")
    ///     }
    ///
    ///     //...
    ///
    ///     RouterLink(tag: "your tag", label: self.makeLabel) {
    ///         DestinationView()
    ///     }
    ///
    ///- Parameter tag: Tag of the view to which the transition will be made.
    ///- Parameter label: RouterLink label.
    ///- Parameter destination: Destination View.
    public init(
        tag: Tag,
        @ViewBuilder label: @escaping () -> Label,
        destination: @escaping () -> Destination) {
            self.init(
                tag: tag,
                label: label,
                option: nil,
                destination: .init(destination)
            )
        }
}
