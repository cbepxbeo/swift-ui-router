/*

Project: SwiftUIRouter
File: RouterViewWrapper.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI

public struct RouterViewWrapper {
    public init(view: @escaping () -> AnyView){
        self.view = view
    }
    public init(){
        self.view = nil
    }
    public let view: (() -> AnyView)?
}
