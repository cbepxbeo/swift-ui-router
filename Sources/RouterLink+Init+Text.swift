/*

Project: SwiftUIRouter
File: RouterLink+Init+Text.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI

extension RouterLink where Label == Text {
    public init(_ label: String, _ destination: @escaping () -> Content) {
        self.init({ Text(label) }, destination)
    }
}
