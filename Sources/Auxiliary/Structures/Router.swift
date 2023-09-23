/*
 
 Project: SwiftUIRouter
 File: Router.swift
 Created by: Egor Boyko
 Date: 04.06.2023
 Last Fix: 24.09.2023
 Version: 1.0.4
 
 Status: #Complete | #Not decorated
 
 */

import SwiftUI
import SwiftUtilities

public struct Router<Root: View>: View {
    public init(
        externalController: ExternalController? = nil,
        @ViewBuilder rootView: @escaping () -> Root){
            self.content = .init(rootView)
            self.externalController = externalController
        }
    
    private let content: ReferenceWrapper<(() -> Root)?>
    private let externalController: ExternalController?
    
    public var body: some View {
        RouterView(
            externalController: self.externalController,
            rootView: content
        )
    }
}
