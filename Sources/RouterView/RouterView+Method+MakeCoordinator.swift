/*

Project: SwiftUIRouter
File: RouterView+Method+MakeCoordinator.swift
Created by: Egor Boyko
Date: 15.01.2022
Last Fix: 04.06.2023
Version: 1.0.4

Status: #Complete | #Does not require decorated

*/

extension RouterView {
    internal func makeCoordinator() -> RoutingController {
        self.externalRoutingController?.routingController = self.routingController
        return self.routingController
    }
}
