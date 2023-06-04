/*

Project: SwiftUIRouter
File: RouterLink+Init+DestinationNever+TagInt.swift
Created by: Egor Boyko
Date: 04.06.2023
Last Fix: 04.06.2023
Version: 1.0.4
 
Status: #Complete | #Decorated

*/

import SwiftUI

extension RouterLink where Destination == Never, Tag == Int {
    ///Creating a router link using the options (back or root view) and your label.
    ///
    ///     RouterLink(option: .back) {
    ///         Image(systemName: "chevron.left")
    ///     }
    ///
    ///- Parameter option: Link option
    ///- Parameter label: Link label
    public init(
        option: RouterLinkOption,
        @ViewBuilder label: @escaping () -> Label){
        self.init(
            tag: nil,
            label: label,
            option: option,
            destination: nil
        )
    }
}
