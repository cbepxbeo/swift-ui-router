/*
 
 Project: SwiftUIRouter
 File: RouterLink+Init+TagInt.swift
 Created by: Egor Boyko
 Date: 15.01.2022
 Last Fix: 04.06.2023
 Version: 1.0.4
 
 Status: #Complete | #Decorated
 
 */

import SwiftUI

extension RouterLink where Tag == Int {
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
    ///- Parameter label: RouterLink label.
    ///- Parameter destination: Destination View.
    public init(
        @ViewBuilder label: @escaping () -> Label,
        destination: @escaping () -> Destination) {
            self.init(
                tag: nil,
                label: label,
                option: nil,
                destination: .init(destination)
            )
        }
}
