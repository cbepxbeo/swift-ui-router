/*
 
 Project: SwiftUIRouter
 File: NavigationDelegate+Protocol+UINavigationControllerDelegate.swift
 Created by: Egor Boyko
 Date: 02.06.2023
 Last Fix: 02.06.2023
 Version: 1.0.2
 
 Status: #Complete | #Does not require decorated
 
 */

import UIKit

extension NavigationDelegate: UINavigationControllerDelegate {
    @MainActor func navigationController(
        _ navigationController: UINavigationController,
        willShow viewController: UIViewController,
        animated: Bool
    ){
        DispatchQueue.main.async {
            navigationController.setNavigationBarHidden(true, animated: false)
        }
    }
    
    @MainActor func navigationController(
        _ navigationController: UINavigationController,
        didShow viewController: UIViewController,
        animated: Bool
    ){
        navigationController.setNavigationBarHidden(true, animated: false)
        self.routingController?.cleaning()
    }
}
