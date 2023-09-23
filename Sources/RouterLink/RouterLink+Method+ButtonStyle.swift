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
    ///Sets the style for RouterLink within this view to a button style with a custom appearance and custom interaction behavior.
    public func buttonStyle<Style: PrimitiveButtonStyle>(_ style: Style) -> some View {
        self.makeButton().buttonStyle(style)
    }
}
