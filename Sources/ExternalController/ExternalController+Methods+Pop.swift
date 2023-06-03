/*

Project: SwiftUIRouter
File: ExternalController+Methods+Pop.swift
Created by: Egor Boyko
Date: 03.06.2023

Status: #Complete | #Not decorated

*/

import UIKit

extension ExternalController {
    @MainActor public func pop(
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3){
            self.routingController?.pop(subType, type, duration)
        }
    
    @MainActor public func pop(){
        self.routingController?.pop(nil, nil, nil)
    }
}
