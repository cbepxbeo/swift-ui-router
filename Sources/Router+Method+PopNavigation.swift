/*

Project: SwiftUIRouter
File: Router+Method+PopNavigation.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI

extension Router {
    @MainActor internal func popNavigation(controller: UINavigationController){
        controller.popViewController(animated: true)
        controller.setNavigationBarHidden(true, animated: false)
    }
    
}
