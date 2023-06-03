/*

Project: SwiftUIRouter
File: RoutingController+Methods+PopToTag.swift
Created by: Egor Boyko
Date: 03.06.2023

Status: #Complete | #Not decorated

*/

import UIKit

extension RoutingController {
    
    @MainActor public func popToTag<Tag: Hashable>(
        tag: Tag,
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3) throws {
            try self.popToTag(tag, subType, type, duration)
        }
    
    @MainActor public func popToTag<Tag: Hashable>(tag: Tag) throws {
        try self.popToTag(tag, nil, nil, nil)
    }
    
    @MainActor internal func popToTag<Tag: Hashable>(
        _ tag: Tag,
        _ subType: CATransitionSubtype?,
        _ type: CATransitionType?,
        _ duration: CGFloat?) throws {
            if let controller: UIViewController = self.storage[tag.hashValue]?.value {
                self.navigationController?.popToViewController(
                    controller,
                    animated: self.addTransitionToLayer(
                        subType,
                        type,
                        duration
                    )
                )
                self.navigationController?.setNavigationBarHidden(true, animated: false)
            } else {
                throw RouterError.unownedTag
            }
        }
}
