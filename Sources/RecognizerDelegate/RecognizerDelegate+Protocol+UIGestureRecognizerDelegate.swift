/*

Project: SwiftUIRouter
File: RecognizerDelegate+Protocol+UIGestureRecognizerDelegate.swift
Created by: Egor Boyko
Date: 02.06.2023

Status: #Complete | #Not decorated

*/

import UIKit

extension RecognizerDelegate: UIGestureRecognizerDelegate {
    internal func gestureRecognizerShouldBegin(
        _ gestureRecognizer: UIGestureRecognizer) -> Bool {
            self.navigationController?.viewControllers.count ?? 0 > 1
    }
    
    internal func gestureRecognizer(
        _ gestureRecognizer: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            true
    }
}
