/*

Project: SwiftUIRouter
File: Router+RecognizerDelegate.swift
Created by: Egor Boyko
Date: 15.01.2022

Status: #Complete | #Not decorated

*/

import SwiftUI

extension Router {
    internal final class RecognizerDelegate: NSObject, UIGestureRecognizerDelegate {
        private weak var navigationController: UINavigationController?
        
        internal func setNavigationController(_ controller: UINavigationController){
            self.navigationController = controller
        }
        internal func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
            navigationController?.viewControllers.count ?? 0 > 1
        }
        internal func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            true
        }
    }
}
