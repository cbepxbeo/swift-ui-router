/*
 
 Project: SwiftUIRouter
 File: ViewWrapper.swift
 Created by: Egor Boyko
 Date: 07.06.2023
 Last Fix: 07.06.2023
 Version: 1.0.5
 
 Status: #Complete | #Does not require decorated
 
 */

import SwiftUI

struct ViewWrapper<Content: View, Tag: Hashable>: RouterViewWrapper  {
    init(tag: Tag, @ViewBuilder content: @escaping () -> Content) {
        self.tag = tag
        self.content = content
    }
    
    private var content: () -> Content
    private var tag: Tag
    
    var hashValue: Int {
        self.tag.hashValue
    }
    
    var body: some View {
        self.content()
    }
}




