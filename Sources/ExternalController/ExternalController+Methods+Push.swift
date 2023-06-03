/*

Project: SwiftUIRouter
File: ExternalController+Methods+Push.swift
Created by: Egor Boyko
Date: 03.06.2023

Status: #Complete | #Not decorated

*/

import SwiftUI

extension ExternalController {
    @MainActor public func push<Destination: View, Tag: Hashable>(
        tag: Tag?  = Optional<Int>.none,
        @ViewBuilder _ content: @escaping () -> Destination){
            self.routingController?.push(tag, nil, nil, nil, content)
        }
    
    @MainActor public func push<Destination: View, Tag: Hashable>(
        tag: Tag?  = Optional<Int>.none,
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
