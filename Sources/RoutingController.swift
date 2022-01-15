/*

Project: SwiftUIRouter
File: RoutingController.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI

open class RoutingController: NSObject, RouterController {
    @Published public var current: RouterViewWrapper?
    
    required public init(rootView: (() -> AnyView)?){
        self.current = rootView != nil ? RouterViewWrapper(view: rootView!) : nil
    }
    
    @MainActor public func push<T: View>(@ViewBuilder _ content: @escaping () -> T){
        self.current = RouterViewWrapper(view:   { AnyView(content().environmentObject(self)) }    )
    }
    @MainActor public func pop(){
        self.current = .init()
    }
    @MainActor public func popToRootView(){
        self.current = nil
    }
}
