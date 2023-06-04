/*

Project: SwiftUIRouter
File: RouterLink+Init+DestinationNever+TagInt+LabelText.swift
Created by: Egor Boyko
Date: 04.06.2023
Last Fix: 04.06.2023
Version: 1.0.4

Status: #Complete | #Decorated

*/

import SwiftUI

extension RouterLink where Destination == Never, Tag == Int, Label == Text {
    ///Creating a router link using the options (back or root view).  Text label.
    ///
    ///     RouterLink("Back", option: .back)
    ///
    ///- Parameter label: Text to label
    ///- Parameter option: Link option
    public init(_ label: String, option: RouterLinkOption) {
        self.init(
            tag: nil,
            label: { Text(label) },
            option: option,
            destination: nil
        )
    }
}
