/*

Project: SwiftUIRouter
File: ExternalController+Methods+PopToTag.swift
Created by: Egor Boyko
Date: 03.06.2023
Last Fix: 03.06.2023
Version: 1.0.3
 
Status: #Complete | #Not decorated

*/

import UIKit

extension ExternalController {
    @MainActor public func popToTag<Tag: Hashable>(
        tag: Tag,
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3) throws {
            try self.routingController?.popToTag(tag, subType, type, duration)
        }
    
    @MainActor public func popToTag<Tag: Hashable>(tag: Tag) throws {
        try self.routingController?.popToTag(tag, nil, nil, nil)
    }
}
