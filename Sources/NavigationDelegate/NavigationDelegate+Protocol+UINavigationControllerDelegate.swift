/*

Project: SwiftUIRouter
File: NavigationDelegate+Protocol+UINavigationControllerDelegate.swift
Created by: Egor Boyko
Date: 02.06.2023

Status: #Complete | #Not decorated

*/

import UIKit

extension NavigationDelegate: UINavigationControllerDelegate {
    @MainActor internal func navigationController(
        _ navigationController: UINavigationController,
        willShow viewController: UIViewController,
        animated: Bool
    ){
        navigationController.setNavigationBarHidden(true, animated: false)
    }
    
    @MainActor internal func navigationController(
        _ navigationController: UINavigationController,
        didShow viewController: UIViewController,
        animated: Bool
    ){
        navigationController.setNavigationBarHidden(true, animated: false)
        self.routingController?.cleaning()
    }
}
