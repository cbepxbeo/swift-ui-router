/*
 
 Project: SwiftUIRouter
 File: RouterLink+Method+Action.swift
 Created by: Egor Boyko
 Date: 03.06.2023
 Last Fix: 04.06.2023
 Version: 1.0.4
 
 Status: #Complete | #Does not require decorated
 
 */

import SwiftUI

extension RouterLink {
    internal func action(){
        switch self.option{
        case .back:
            self.routingController.pop()
        case .toRootView:
            self.routingController.popToRootView()
        default:
            if let destination, let tag, let handler = self.moveToTagHandler{
                do {
                    if let transition {
                        try self.routingController.push(
                            tag: tag,
                            transition: transition.option,
                            type: transition.type,
                            duration: transition.duration,
                            destination
                        )
                    } else {
                        try self.routingController.push(tag: tag, destination)
                    }
                    handler(self.routingController, nil)
                } catch {
                    handler(self.routingController, error)
                }
            } else if let tag, let handler = self.moveToTagHandler {
                do {
                    if let transition {
                        try self.routingController.popToTag(
                            tag: tag,
                            transition: transition.option,
                            type: transition.type,
                            duration: transition.duration
                        )
                    } else {
                        try self.routingController.popToTag(tag: tag)
                    }
                    handler(self.routingController, nil)
                } catch {
                    handler(self.routingController, error)
                }
            } else if let destination, let tag {
                if let transition {
                    self.routingController.push(
                        replacingTag: tag,
                        transition: transition.option,
                        type: transition.type,
                        duration: transition.duration,
                        destination
                    )
                } else {
                    self.routingController.push(replacingTag: tag, destination)
                }
            } else if let destination {
                if let transition {
                    self.routingController.push(
                        transition: transition.option,
                        type: transition.type,
                        duration: transition.duration,
                        destination
                    )
                } else {
                    self.routingController.push(destination)
                }
            }
        }
    }
}
