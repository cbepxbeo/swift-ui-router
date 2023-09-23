/*
 
 Project: SwiftUIRouter
 File: ExternalController+Methods+SetView.swift
 Created by: Egor Boyko
 Date: 21.07.2023
 Last Fix: 21.07.2023
 Version: 1.0.6
 
 Status: #Complete | #Not decorated
 
 */

import SwiftUI

extension ExternalController {
    
    @MainActor
    public func setView<Destination: View>(
        @ViewBuilder _ content: @escaping () -> Destination){
            self.routingController?.setView(nil, nil, nil, content)
        }
    
    @MainActor
    func setView<Destination: View>(
        subType: CATransitionSubtype,
        type: CATransitionType,
        duration: CGFloat,
        @ViewBuilder _ content: @escaping () -> Destination){
            self.routingController?.setView(subType, type, duration, content)
        }
    
}
