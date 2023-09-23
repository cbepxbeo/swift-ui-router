/*
 
 Project: SwiftUIRouter
 File: RoutingController+Methods+SetView.swift
 Created by: Egor Boyko
 Date: 21.07.2023
 Last Fix: 21.07.2023
 Version: 1.0.6
 
 Status: #Complete | #Not decorated
 
 */

import SwiftUI

extension RoutingController {
    
    @MainActor
    public func setView<Destination: View>(
        @ViewBuilder _ content: @escaping () -> Destination){
            self.setView(nil, nil, nil, content)
        }
    
    @MainActor
    func setView<Destination: View>(
        subType: CATransitionSubtype,
        type: CATransitionType,
        duration: CGFloat,
        @ViewBuilder _ content: @escaping () -> Destination){
            self.setView(subType, type, duration, content)
        }
    
    @MainActor
    func setView<Destination: View>(
        _ subType: CATransitionSubtype?,
        _ type: CATransitionType?,
        _ duration: CGFloat?,
        @ViewBuilder _ content: @escaping () -> Destination){
            
            let destination = content()
            let hosting = UIHostingController(
                rootView: destination
                    .environmentObject(self)
                    .ignoresSafeArea()
            )
            
            self.storage = [:]
            
            self.navigationController?.setViewControllers(
                [hosting],
                animated: self.addTransitionToLayer(
                    subType,
                    type,
                    duration
                )
            )
            self.navigationController?.setNavigationBarHidden(true, animated: false)
        }
}
