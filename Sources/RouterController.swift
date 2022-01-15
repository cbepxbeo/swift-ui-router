/*

Project: SwiftUIRouter
File: RouterController.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI

public protocol RouterController: ObservableObject {
    init(rootView: (() -> AnyView)?)
    var current: RouterViewWrapper? { get set }
    func pop()
    func push<T: View>(@ViewBuilder _ content: @escaping () -> T)
}
