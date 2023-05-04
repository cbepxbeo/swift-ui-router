/*

Project: SwiftUIRouter
File: ExternalController+Methods+Push.swift
Created by: Egor Boyko
Date: 03.06.2023
Last Fix: 03.06.2023
Version: 1.0.3
 
Status: #Complete | #Not decorated

*/

import SwiftUI

extension ExternalController {
    
    @MainActor public func push<Destination: View, Tag: Hashable>(
        tag: Tag,
        @ViewBuilder _ content: @escaping () -> Destination) throws {
            try self.routingController?.push(tag: tag, content)
        }
    
    @MainActor public func push<Destination: View, Tag: Hashable>(
        replacingTag tag: Tag?  = Optional<Int>.none,
        @ViewBuilder _ content: @escaping () -> Destination){
            self.routingController?.push(replacingTag: tag, content)
        }
    
    @MainActor public func push<Destination: View, Tag: Hashable>(
        tag: Tag,
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3,
        @ViewBuilder _ content: @escaping () -> Destination) throws {
            try self.routingController?.push(
                tag: tag,
                transition: subType,
                type: type,
                duration: duration,
                content
            )
        }
    
    @MainActor public func push<Destination: View, Tag: Hashable>(
        replacingTag tag: Tag?  = Optional<Int>.none,
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3,
        @ViewBuilder _ content: @escaping () -> Destination){
            self.routingController?.push(
                tag,
                subType,
                type,
                duration,
                content
            )
        }
}
