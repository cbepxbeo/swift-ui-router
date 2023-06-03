/*

Project: SwiftUIRouter
File: Router.swift
Created by: Egor Boyko
Date: 15.01.2022
Last Fix: 03.06.2023

Status: #Complete | #Not decorated

*/

import SwiftUI
import SwiftUtilities
import SwiftUIExtension

public struct Router<Content: View>: UIViewControllerRepresentable {
    public init(
        externalController: ExternalController? = nil,
        @ViewBuilder rootView: @escaping () -> Content){
            self.content = .init(rootView)
            self.externalRoutingController = externalController
            self._routingController = .init(initialValue: { .init() })
    }
    
    internal var content: ReferenceWrapper<(() -> Content)?>
    internal let externalRoutingController: ExternalController?
    internal let _routingController: StateObject<RoutingController>
    internal var routingController: RoutingController {
        self._routingController.wrappedValue
    }
}
