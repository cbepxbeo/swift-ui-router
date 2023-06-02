/*

Project: SwiftUIRouter
File: RecognizerDelegate+Method+SetNavigationController.swift
Created by: Egor Boyko
Date: 02.06.2023

Status: #Complete | #Not decorated

*/

import UIKit

extension RecognizerDelegate {
    internal func setNavigationController(
        _ controller: UINavigationController){
            self.navigationController = controller
    }
}
