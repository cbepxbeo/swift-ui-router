/*

Project: SwiftUIRouter
File: Router.swift
Created by: Egor Boyko
Date: 15.01.2022
Last Fix: 02.06.2023

Status: #Complete | #Not decorated

*/

import SwiftUI
import SwiftUtilities
import SwiftUIExtension

public struct Router<Content: View>: UIViewControllerRepresentable {
    public init(@ViewBuilder rootView: @escaping () -> Content){
        self.content = .init(rootView)
        self._routingController = .init(initialValue: { .init() })
    }
    
    internal var content: ReferenceWrapper<(() -> Content)?>
    internal let _routingController: StateObject<RoutingController>
    internal var routingController: RoutingController {
        self._routingController.wrappedValue
    }
}
