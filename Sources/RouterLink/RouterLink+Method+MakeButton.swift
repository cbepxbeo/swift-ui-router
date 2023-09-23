/*
 
 Project: SwiftUIRouter
 File: RouterLink.swift
 Created by: Egor Boyko
 Date: 03.06.2023
 Last Fix: 04.06.2023
 Version: 1.0.3
 
 Status: #Complete | #Does not require decorated
 
 */

import SwiftUI

extension RouterLink {
    internal func makeButton() -> Button<Label> {
        Button(
            action: self.action,
            label: self.label
        )
    }
}
