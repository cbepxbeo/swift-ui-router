/*

Project: SwiftUIRouter
File: RouterLink+Init+LabelText+TagInt.swift
Created by: Egor Boyko
Date: 15.01.2022
Last Fix: 04.06.2023

Status: #Complete | #Not decorated

*/

import SwiftUI

extension RouterLink where Label == Text, Tag == Int {
    public init(_ label: String, _ destination: @escaping () -> Content) {
        self.init({ Text(label) }, destination)
    }
}
