/*

Project: SwiftUIRouter
File: UIHostingController+Init.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI

extension UIHostingController where Content == AnyView {
    internal convenience init<T: View, Controller: RouterController>(view content: () -> T, controller: Controller){
        self.init(rootView: AnyView(
            content()
                .environmentObject(controller)
                .ignoresSafeArea()
        ))
    }
}
