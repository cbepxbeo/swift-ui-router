/*

Project: SwiftUIRouter
File: RoutingController+Method+AddTransitionToLayer.swift
Created by: Egor Boyko
Date: 02.06.2023

Status: #Complete | #Not decorated

*/

import UIKit

extension RoutingController {
    @MainActor internal func addTransitionToLayer(
        _ subType: CATransitionSubtype?,
        _ type: CATransitionType?,
        _ duration: CGFloat?) -> Bool {
            if let subType, let type, let duration  {
                let transition = CATransition()
                transition.duration = .init(duration)
                transition.type = type
                transition.subtype = subType
                self.navigationController?.view.layer.add(transition, forKey: nil)
                return false
            }
            return true
        }
}
