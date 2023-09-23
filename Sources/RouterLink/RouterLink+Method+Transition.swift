/*
 
 Project: SwiftUIRouter
 File: RouterLink+Method+ButtonStyle.swift
 Created by: Egor Boyko
 Date: 03.06.2023
 Last Fix: 04.06.2023
 Version: 1.0.3
 
 Status: #Complete | #Decorated
 
 */

import SwiftUI

extension RouterLink {
    ///Sets the transitions option for RouterLink.
    public func transition(option: CATransitionSubtype, type: CATransitionType = .push, duration: CGFloat = 0.3) -> Self {
        var temp = self
        temp.transition = (option, type, duration)
        return temp
    }
}
