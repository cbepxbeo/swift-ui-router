/*

Project: SwiftUIRouter
File: ExternalRoutingController.swift
Created by: Egor Boyko
Date: 03.06.2023
Last Fix: 03.06.2023
Version: 1.0.3

Status: #Complete | #Not decorated

*/

import Combine

open class ExternalRoutingController: ExternalController, ObservableObject {
    public init() { self.routingController = nil }
    public weak var routingController: RoutingController?
}
