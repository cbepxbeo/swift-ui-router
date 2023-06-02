/*

Project: SwiftUIRouter
File: RoutingController+Methods+PopToRootView.swift
Created by: Egor Boyko
Date: 02.06.2023

Status: #Complete | #Not decorated

*/

import UIKit

extension RoutingController {
    
    @MainActor public func popToRootView(
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3){
            self.popToRootView(subType, type, duration)
        }
    
    @MainActor public func popToRootView(){
        self.popToRootView(nil, nil, nil)
    }
    
    @MainActor internal func popToRootView(
        _ subType: CATransitionSubtype?,
        _ type: CATransitionType?,
        _ duration: CGFloat?){
        self.navigationController?.popToRootViewController(
            animated: self.addTransitionToLayer(
                subType,
                type,
                duration)
        )
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
}
