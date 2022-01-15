/*

Project: SwiftUIRouter
File: Router.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI
import SwiftUtilities
import SwiftUIExtension

public struct Router<Content: View, Controller: RouterController>: UIViewControllerRepresentable {
    public init(controllerType: Controller.Type, _ content: @escaping () -> Content){
        self.logger = LoggerProvider.default(category: "Router")
        self.content = content
        self._routingController = StateObject(initialValue: { .init(rootView: nil) })
        self.navigationController = UINavigationController()
        self.recognizerDelegate = .init()
        self.navigationDelegate = .init()
        self.recognizerDelegate.setNavigationController(self.navigationController)
        self.logger.debug("Initialized")
    }
    
    internal let _routingController: StateObject<Controller>
    internal let logger: LoggerProvider.LoggerWrapper
    internal let content: () -> Content
    internal let navigationController: UINavigationController
    internal let recognizerDelegate:  Self.RecognizerDelegate
    internal let navigationDelegate: Self.NavigationDelegate
    
    internal var routingController: Controller {
        self._routingController.wrappedValue
    }
}
