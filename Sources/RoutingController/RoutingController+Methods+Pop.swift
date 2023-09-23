/*
 
 Project: SwiftUIRouter
 File: RoutingController+Methods+Pop.swift
 Created by: Egor Boyko
 Date: 02.06.2023
 Last Fix: 24.09.2023
 Version: 1.0.2
 
 Status: #Complete | #Not decorated
 
 */

import UIKit
import SwiftUtilities

extension RoutingController {
    public func pop(
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3){
            toMainThread {
                self.pop(subType, type, duration)
            }
        }
    
    public func pop(){
        toMainThread {
            self.pop(nil, nil, nil)
        }
    }
    
    func pop(
        _ subType: CATransitionSubtype?,
        _ type: CATransitionType?,
        _ duration: CGFloat?){
            
            self.navigationController?.popViewController(
                animated: self.addTransitionToLayer(
                    subType,
                    type,
                    duration)
            )
            self.navigationController?.setNavigationBarHidden(true, animated: false)
        }
    
}
