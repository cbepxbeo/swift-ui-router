/*

Project: SwiftUIRouter
File: RoutingController+Methods+Push.swift
Created by: Egor Boyko
Date: 02.06.2023
Last Fix: 03.06.2023
 
Status: #Complete | #Not decorated

*/

import SwiftUI

extension RoutingController {
    
    @MainActor public func push<Destination: View, Tag: Hashable>(
        tag: Tag? = Optional<Int>.none,
        @ViewBuilder _ content: @escaping () -> Destination){
            self.push(tag, nil, nil, nil, content)
        }
    
    @MainActor public func push<Destination: View, Tag: Hashable>(
        tag: Tag? = Optional<Int>.none,
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3,
        @ViewBuilder _ content: @escaping () -> Destination){
            self.push(tag, subType, type, duration, content)
        }
    
    @MainActor internal func push<Destination: View, Tag: Hashable>(
        _ tag: Tag?,
        _ subType: CATransitionSubtype?,
        _ type: CATransitionType?,
        _ duration: CGFloat?,
        @ViewBuilder _ content: @escaping () -> Destination){
            
            let hosting = UIHostingController(
                rootView: content()
                    .environmentObject(self)
                    .ignoresSafeArea()
            )
            
            if let tag {
                self.storage[tag.hashValue] = .init(value: hosting)
            }
            
            self.navigationController?.pushViewController(
                hosting,
                animated: self.addTransitionToLayer(
                    subType,
                    type,
                    duration
                )
            )
            self.navigationController?.setNavigationBarHidden(true, animated: false)
        }
}
