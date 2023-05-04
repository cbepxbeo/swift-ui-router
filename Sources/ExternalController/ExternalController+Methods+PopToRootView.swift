/*

Project: SwiftUIRouter
File: ExternalController+Methods+PopToRootView.swift
Created by: Egor Boyko
Date: 03.06.2023
Last Fix: 03.06.2023
Version: 1.0.3
 
Status: #Complete | #Not decorated

*/

import UIKit

extension ExternalController {
    @MainActor public func popToRootView(
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3){
            self.routingController?.popToRootView(subType, type, duration)
        }
    
    @MainActor public func popToRootView(){
        self.routingController?.popToRootView(nil, nil, nil)
    }
}
