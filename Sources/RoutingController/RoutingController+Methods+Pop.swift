/*

Project: SwiftUIRouter
File: RoutingController+Methods+Pop.swift
Created by: Egor Boyko
Date: 02.06.2023
Last Fix: 03.06.2023
Version: 1.0.2

Status: #Complete | #Not decorated

*/

import UIKit

extension RoutingController {
    
    @MainActor public func pop(
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3){
            self.pop(subType, type, duration)
        }
    
    @MainActor public func pop(){
        self.pop(nil, nil, nil)
    }
    
    @MainActor internal func pop(
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
