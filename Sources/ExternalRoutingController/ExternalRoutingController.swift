/*

Project: SwiftUIRouter
File: ExternalRoutingController.swift
Created by: Egor Boyko
Date: 03.06.2023

Status: #Complete | #Not decorated

*/

import Combine

open class ExternalRoutingController: ExternalController, ObservableObject {
    public init() { self.routingController = nil }
    public weak var routingController: RoutingController?
}
