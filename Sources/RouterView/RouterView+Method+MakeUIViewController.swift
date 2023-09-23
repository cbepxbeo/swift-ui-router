/*
 
 Project: SwiftUIRouter
 File: RouterView+Method+MakeUIViewController.swift
 Created by: Egor Boyko
 Date: 15.01.2022
 Last Fix: 24.09.2023
 Version: 1.0.4
 
 Status: #Complete | #Does not require decorated
 
 */

import SwiftUI

extension RouterView {
    func makeUIViewController(context: Context) -> UINavigationController {
        guard let root = self.content.value else {
            fatalError("Can't use routing without root view")
        }
        
        let hosted = UIHostingController(
            rootView: root()
                .environmentObject(context.coordinator)
        )
        self.content.value = nil
        let navigationController = UINavigationController(
            rootViewController: hosted
        )
        
        context.coordinator.navigationDelegate.routingController = context.coordinator
        context.coordinator.navigationController = navigationController
        context.coordinator.recognizerDelegate.setNavigationController(navigationController)
        
        navigationController.delegate = context.coordinator.navigationDelegate
        navigationController.interactivePopGestureRecognizer?.delegate = context.coordinator.recognizerDelegate
        navigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController.navigationBar.tintColor = .clear
        navigationController.navigationBar.shadowImage = UIImage()
        navigationController.navigationBar.isTranslucent = true
        
        return navigationController
    }
    
}
