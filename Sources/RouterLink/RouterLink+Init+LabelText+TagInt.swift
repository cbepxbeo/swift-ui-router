/*
 
 Project: SwiftUIRouter
 File: RouterLink+Init+LabelText+TagInt.swift
 Created by: Egor Boyko
 Date: 15.01.2022
 Last Fix: 04.06.2023
 Version: 1.0.4
 
 Status: #Complete | #Not decorated
 
 */

import SwiftUI

extension RouterLink where Label == Text, Tag == Int {
    ///Creating a router link to go to view. With text label.
    ///
    ///     RouterLink("Label") {
    ///         DestinationView()
    ///     }
    ///
    ///- Parameter label: RouterLink text label.
    ///- Parameter destination: Destination View.
    public init(
        _ label: String,
        destination: @escaping () -> Destination) {
            self.init(
                tag: nil,
                label: { Text(label) },
                option: nil,
                destination: .init(destination)
            )
        }
}
