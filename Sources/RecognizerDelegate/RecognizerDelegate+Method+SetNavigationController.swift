/*
 
 Project: SwiftUIRouter
 File: RecognizerDelegate+Method+SetNavigationController.swift
 Created by: Egor Boyko
 Date: 02.06.2023
 Last Fix: 02.06.2023
 Version: 1.0.2
 
 Status: #Complete | #Does not require decorated
 
 */

import UIKit

extension RecognizerDelegate {
    func setNavigationController(
        _ controller: UINavigationController){
            self.navigationController = controller
        }
}
