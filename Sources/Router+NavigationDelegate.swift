/*

Project: SwiftUIRouter
File: Router+NavigationDelegate.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI

extension Router {
    internal final class NavigationDelegate: NSObject, UINavigationControllerDelegate {
        @MainActor func navigationController(
            _ navigationController: UINavigationController,
            willShow viewController: UIViewController,
            animated: Bool
        ){
            navigationController.setNavigationBarHidden(true, animated: true)
        }
        
        @MainActor func navigationController(
            _ navigationController: UINavigationController,
            didShow viewController: UIViewController,
            animated: Bool
        ){
            navigationController.setNavigationBarHidden(true, animated: false)
        }
    }
}
