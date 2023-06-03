/*

Project: SwiftUIRouter
File: ExternalController+Methods+Push.swift
Created by: Egor Boyko
Date: 03.06.2023

Status: #Complete | #Not decorated

*/

import SwiftUI

extension ExternalController {
    @MainActor public func push<Destination: View>(
        @ViewBuilder _ content: @escaping () -> Destination){
            self.routingController?.push(nil, nil, nil, content)
        }
    
    @MainActor public func push<Destination: View>(
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3,
        @ViewBuilder _ content: @escaping () -> Destination){
            self.routingController?.push(
                subType,
                type,
                duration,
                content
            )
        }
}
