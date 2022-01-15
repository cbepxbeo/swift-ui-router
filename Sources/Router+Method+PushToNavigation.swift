/*

Project: SwiftUIRouter
File: Router+Method+PushToNavigation.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI


extension Router {
    @MainActor internal func pushToNavigation(controller: UINavigationController, toPush: UIViewController){
        controller.pushViewController(toPush, animated: true)
        controller.setNavigationBarHidden(true, animated: false)
    }
}
