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

struct RouterView<Root: View>: UIViewControllerRepresentable {
    init(
        externalController: ExternalController? = nil,
        rootView: ReferenceWrapper<(() -> Root)?>){
            self.content = rootView
            self.externalRoutingController = externalController
            self._routingController = .init(initialValue: { .init() })
        }
    
    var content: ReferenceWrapper<(() -> Root)?>
    let externalRoutingController: ExternalController?
    let _routingController: StateObject<RoutingController>
    var routingController: RoutingController {
        self._routingController.wrappedValue
    }
}
