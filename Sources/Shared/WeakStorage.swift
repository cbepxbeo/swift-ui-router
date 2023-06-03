/*

Project: SwiftUIRouter
File: RouterWeakStorage.swift
Created by: Egor Boyko
Date: 03.06.2023

Status: #Complete | #Not decorated

*/


internal struct RouterWeakStorage<T: AnyObject> {
    internal weak var value: T?
    internal init(value: T) {
        self.value = value
    }
}
