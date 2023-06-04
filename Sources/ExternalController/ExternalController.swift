/*

Project: SwiftUIRouter
File: ExternalController.swift
Created by: Egor Boyko
Date: 03.06.2023
Last Fix: 03.06.2023
Version: 1.0.3

Status: #Complete | #Not decorated

*/

import Combine

public protocol ExternalController: AnyObject {
    var routingController: RoutingController? { get set }
}
