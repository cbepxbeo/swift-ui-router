/*

Project: SwiftUIRouter
File: RouterLink+Init+TagInt.swift
Created by: Egor Boyko
Date: 15.01.2022
Last Fix: 04.06.2023

Status: #Complete | #Not decorated

*/

import Foundation

extension RouterLink where Tag == Int {
    public init(
        _ label: @escaping () -> Label,
        _ destination: @escaping () -> Content) {
            self.label = label
            self.destination = destination
            self.tag = nil
        }
}
