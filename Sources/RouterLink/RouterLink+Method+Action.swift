/*

Project: SwiftUIRouter
File: RouterLink+Method+Action.swift
Created by: Egor Boyko
Date: 03.06.2023

Status: #Complete | #Not decorated

*/

import SwiftUI

extension RouterLink {
    internal func action(){
        self.routingController.push(replacingTag: self.tag, self.destination)
    }
}
