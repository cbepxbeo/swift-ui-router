/*

Project: SwiftUIRouter
File: Router+Method+UpdateUIViewController.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI


extension Router {
    
    @MainActor public func updateUIViewController(
        _ pageViewController: UINavigationController,
        context: Context) {
            self.logger.debug("Changes in SwiftUI")
            let coordinator = context.coordinator
            
            if coordinator.current == nil {
                self.logger.debug("No action required")
                self.navigationController.popToRootViewController(animated: true)
                return
            }
            
            if let current = coordinator.current, current.view == nil {
                self.logger.debug("Removing the top view")
                if navigationController.viewControllers.count > 1 {
                    self.logger.debug("Call popViewController")
                    self.popNavigation(controller: self.navigationController)
                } else {
                    self.logger.debug("View to removing not found")
                }
            } else if let view = coordinator.current?.view {
                let hosting = UIHostingController(
                    view: view,
                    controller: self.routingController
                )
                self.logger.debug("Adding a view")
                self.pushToNavigation(controller: self.navigationController, toPush: hosting)
            }
        }
    
}
