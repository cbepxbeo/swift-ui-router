/*
 
 Project: SwiftUIRouter
 File: RoutingController+Method+Cleaning.swift
 Created by: Egor Boyko
 Date: 03.06.2023
 Last Fix: 03.06.2023
 Version: 1.0.3
 
 Status: #Complete | #Not decorated
 
 */

import UIKit

extension RoutingController {
    
    internal func cleaning(){
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let routingController = self else {
                return
            }
            let keys = routingController.storage.compactMap { $0.value.value == nil ? $0.key : nil  }
            if keys.isEmpty {
                return
            }
            DispatchQueue.main.async {
                keys.forEach {
                    routingController.storage[$0] = nil
                }
            }
        }
    }
    
}
