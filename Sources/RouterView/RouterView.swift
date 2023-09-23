/*
 
 Project: SwiftUIRouter
 File: RouterView.swift
 Created by: Egor Boyko
 Date: 15.01.2022
 Last Fix: 04.06.2023
 Version: 1.0.4
 
 Status: #Complete | #Does not require decorated
 
 */

import SwiftUI
import SwiftUtilities
import SwiftUIExtension

internal struct RouterView<Root: View>: UIViewControllerRepresentable {
    internal init(
        externalController: ExternalController? = nil,
        rootView: ReferenceWrapper<(() -> Root)?>){
            self.content = rootView
            self.externalRoutingController = externalController
            self._routingController = .init(initialValue: { .init() })
        }
    
    internal var content: ReferenceWrapper<(() -> Root)?>
    internal let externalRoutingController: ExternalController?
    internal let _routingController: StateObject<RoutingController>
    internal var routingController: RoutingController {
        self._routingController.wrappedValue
    }
}
