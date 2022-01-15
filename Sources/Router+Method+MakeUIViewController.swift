/*

Project: SwiftUIRouter
File: Router+Method+MakeUIViewController.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI

extension Router {
    @MainActor public func makeUIViewController(context: Context) -> UINavigationController {
        UINavigationBar.appearance().tintColor = .clear
        
        let rootView = UIHostingController(
            view: self.content,
            controller: self.routingController
        )
        
        self.logger.debug("Setting up UINavigationController")
        self.logger.debug("UIHostingController complited")
        self.navigationController.delegate = self.navigationDelegate
        self.logger.debug("UINavigationController: Delegate setup completed")
        self.logger.debug("Navigation bar customization")
        self.navigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController.navigationBar.shadowImage = UIImage()
        self.navigationController.navigationBar.isTranslucent = true
        self.pushToNavigation(controller: self.navigationController, toPush: rootView)
        self.logger.debug("Navigation bar customization completed")
        self.logger.debug("Setting up gesture processing")
        self.navigationController.interactivePopGestureRecognizer?.delegate = self.recognizerDelegate
        self.logger.debug("Setting completed")
        return self.navigationController
    }
    
}
