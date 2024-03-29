/*
 
 Project: SwiftUIRouter
 File: RoutingController+Method+AddTransitionToLayer.swift
 Created by: Egor Boyko
 Date: 02.06.2023
 Last Fix: 24.09.2023
 Version: 1.0.2
 
 Status: #Complete | #Not decorated
 
 */

import UIKit

extension RoutingController {
    func addTransitionToLayer(
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
