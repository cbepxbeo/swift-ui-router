/*

Project: SwiftUIRouter
File: RouterLink.swift
Created by: Egor Boyko
Date: 15.01.2022
Last Fix: 03.06.2023

Status: #Complete | #Not decorated

*/

import SwiftUI

public struct RouterLink<Content: View, Label: View>: View {
    
    @EnvironmentObject internal var routingController: RoutingController
    
    public init(
        _ label: @escaping () -> Label,
        _ destination: @escaping () -> Content) {
            self.label = label
            self.destination = destination
        }
    
    internal let label: () -> Label
    internal let destination: () -> Content

}

