/*

Project: SwiftUIRouter
File: RouterLink.swift
Created by: Egor Boyko
Date: 03.06.2023

Status: #Complete | #Not decorated

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
