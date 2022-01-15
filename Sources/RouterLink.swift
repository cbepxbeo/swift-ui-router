/*

Project: SwiftUIRouter
File: RouterLink.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI

public struct RouterLink<Content: View, Label: View>: View {
    
    @EnvironmentObject var routingController: RoutingController
    
    public init(
        _ label: @escaping () -> Label,
        _ destination: @escaping () -> Content) {
            self.label = label
            self.destination = destination
        }
    
    private let label: () -> Label
    private let destination: () -> Content

    public var body: some View {
        Button(
            action: action,
            label: label
        )
    }
    
    func action(){
        self.routingController.push(self.destination)
    }
    
}

