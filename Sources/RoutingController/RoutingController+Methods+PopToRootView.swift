/*
 
 Project: SwiftUIRouter
 File: RoutingController+Methods+PopToRootView.swift
 Created by: Egor Boyko
 Date: 02.06.2023
 Last Fix: 24.09.2023
 Version: 1.0.2
 
 Status: #Complete | #Not decorated
 
 */

import UIKit
import SwiftUtilities

extension RoutingController {
    
    public func popToRootView(
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3){
            toMainThread {
                self.popToRootView(subType, type, duration)
            }
        }
    
    public func popToRootView(){
        toMainThread {
            self.popToRootView(nil, nil, nil)
        }
    }
    
    func popToRootView(
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
            self.storage = [:]
        }
    
}
