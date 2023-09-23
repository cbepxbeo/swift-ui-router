/*
 
 Project: SwiftUIRouter
 File: RoutingController.swift
 Created by: Egor Boyko
 Date: 15.01.2022
 Last Fix: 03.06.2023
 Version: 1.0.3
 
 Status: #Complete | #Not decorated
 
 */

import SwiftUI

public final class RoutingController: NSObject, ObservableObject {
    
    required public override init(){
        self.navigationDelegate = .init()
        self.recognizerDelegate = .init()
        self.storage = [:]
        super.init()
    }
    
    var storage: [Int: RouterWeakStorage<UIViewController>]
    var navigationController: UINavigationController?
    let navigationDelegate: NavigationDelegate
    let recognizerDelegate: RecognizerDelegate
}
