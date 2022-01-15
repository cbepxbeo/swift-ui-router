/*

Project: SwiftUIRouter
File: Router+Init+Default.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

extension Router where Controller == RoutingController {
    public init(_ content: @escaping () -> Content){
        self.init(controllerType: RoutingController.self, content)
    }
}
