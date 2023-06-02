/*

Project: SwiftUIRouter
File: RoutingController.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI

public final class RoutingController: NSObject, ObservableObject {
    
    required public override init(){
        self.navigationDelegate = .init()
        self.recognizerDelegate = .init()
        super.init()
    }
    
    internal var navigationController: UINavigationController?
    internal let navigationDelegate: NavigationDelegate
    internal let recognizerDelegate: RecognizerDelegate
}
