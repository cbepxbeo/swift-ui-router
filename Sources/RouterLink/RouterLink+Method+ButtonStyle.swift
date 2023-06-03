/*

Project: SwiftUIRouter
File: RouterLink+Method+ButtonStyle.swift
Created by: Egor Boyko
Date: 03.06.2023

Status: #Complete | #Not decorated

*/

import SwiftUI

extension RouterLink {
    public func buttonStyle<Style: PrimitiveButtonStyle>(_ style: Style) -> some View {
        self.makeButton().buttonStyle(style)
    }
}
