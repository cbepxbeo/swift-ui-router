/*

Project: SwiftUIRouter
File: RouterLink+Init+LabelText.swift
Created by: Egor Boyko
Date: 04.06.2023

Status: #Complete | #Not decorated

*/

import SwiftUI

extension RouterLink where Label == Text{
    public init(tag: Tag, _ label: String, _ destination: @escaping () -> Content) {
        self.init(tag: tag, { Text(label) }, destination)
    }
}
