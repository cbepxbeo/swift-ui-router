/*

Project: SwiftUIRouter
File: RoutingController+Methods+Push.swift
Created by: Egor Boyko
Date: 02.06.2023
Last Fix: 07.06.2023
Version: 1.0.3

Status: #Complete | #Not decorated

*/

import SwiftUI

extension RoutingController {
    
    @MainActor public func push<Destination: View, Tag: Hashable>(
        replacingTag tag: Tag? = Optional<Int>.none,
        @ViewBuilder _ content: @escaping () -> Destination){
            self.push(tag, nil, nil, nil, content)
        }
    
    @MainActor public func push<Destination: View, Tag: Hashable>(
        tag: Tag,
        @ViewBuilder _ content: @escaping () -> Destination) throws {
            if let _ = self.storage[tag.hashValue]?.value {
                throw RouterError.alreadyExistsTag(tag: tag)
            }
            self.push(tag, nil, nil, nil, content)
        }
    
    @MainActor public func push<Destination: View, Tag: Hashable>(
        replacingTag tag: Tag? = Optional<Int>.none,
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3,
        @ViewBuilder _ content: @escaping () -> Destination){
            self.push(tag, subType, type, duration, content)
        }
    
    @MainActor public func push<Destination: View, Tag: Hashable>(
        tag: Tag,
        transition subType: CATransitionSubtype,
        type: CATransitionType = .push,
        duration: CGFloat = 0.3,
        @ViewBuilder _ content: @escaping () -> Destination) throws {
            if let _ = self.storage[tag.hashValue]?.value {
                throw RouterError.alreadyExistsTag(tag: tag)
            }
            self.push(tag, subType, type, duration, content)
        }
    
    @MainActor internal func push<Destination: View, Tag: Hashable>(
        _ tag: Tag?,
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
        
            if let wrappedView = destination as? (any RouterViewWrapper) {
                self.storage[wrappedView.hashValue] = .init(value: hosting)
            } else if let tag {
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
