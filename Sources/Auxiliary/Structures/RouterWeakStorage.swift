/*
 
 Project: SwiftUIRouter
 File: RouterWeakStorage.swift
 Created by: Egor Boyko
 Date: 03.06.2023
 Last Fix: 04.06.2023
 Version: 1.0.4
 
 Status: #Complete | #Does not require decorated
 
 */

struct RouterWeakStorage<T: AnyObject> {
    weak var value: T?
    init(value: T) {
        self.value = value
    }
}
