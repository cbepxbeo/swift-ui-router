/*

Project: SwiftUIRouter
File: ViewWrapper.swift
Created by: Egor Boyko
Date: 07.06.2023
Last Fix: 07.06.2023
Version: 1.0.5

 Status: #Complete | #Not decorated

*/

import SwiftUI

extension View {
    public func routerTag<Tag: Hashable>(_ tag: Tag) -> some View {
        ViewWrapper(tag: tag){
            self
        }
    }
}
