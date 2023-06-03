/*

Project: SwiftUIRouter
File: Router+Method+MakeCoordinator.swift
Created by: Egor Boyko
Date: 15.01.2022
Last Fix: 03.06.2023

Status: #Complete | #Not decorated

*/

extension Router {
    public func makeCoordinator() -> RoutingController {
        self.externalRoutingController?.routingController = self.routingController
        return self.routingController
    }
}
