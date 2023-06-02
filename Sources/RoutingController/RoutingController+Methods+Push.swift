/*

Project: SwiftUIRouter
File: RoutingController+Methods+Push.swift
Created by: Egor Boyko
Date: 02.06.2023

Status: #Complete | #Not decorated

*/

import SwiftUI

extension RoutingController {
    
    @MainActor public func push<Destination: View>(
        @ViewBuilder _ content: @escaping () -> Destination){
            self.push(nil, nil, nil, content)
        }
    
    @MainActor public func push<Destination: View>(
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3,
        @ViewBuilder _ content: @escaping () -> Destination){
            self.push(nil, nil, nil, content)
        }
    
    @MainActor internal func push<Destination: View>(
        _ subType: CATransitionSubtype?,
        _ type: CATransitionType?,
        _ duration: CGFloat?,
        @ViewBuilder _ content: @escaping () -> Destination){
            
            let hosting = UIHostingController(
                rootView: content()
                    .environmentObject(self)
                    .ignoresSafeArea()
            )
            
            self.navigationController?.pushViewController(hosting, animated: self.addTransitionToLayer(
                    subType,
                    type,
                    duration
                )
            )
            self.navigationController?.setNavigationBarHidden(true, animated: false)
        }
}
