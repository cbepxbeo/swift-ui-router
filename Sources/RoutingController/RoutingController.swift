/*

Project: SwiftUIRouter
File: RoutingController.swift
Created by: Egor Boyko
Date: 15.01.2022
Last Fix: 03.06.2023

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
    
    internal var storage: [Int: RouterWeakStorage<UIViewController>]
    internal var navigationController: UINavigationController?
    internal let navigationDelegate: NavigationDelegate
    internal let recognizerDelegate: RecognizerDelegate
}
