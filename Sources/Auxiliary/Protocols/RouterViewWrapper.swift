/*

Project: SwiftUIRouter
File: RouterViewWrapper.swift
Created by: Egor Boyko
Date: 07.06.2023
Last Fix: 07.06.2023
Version: 1.0.5

Status: #Complete | #Does not require decorated

*/

import SwiftUI

internal protocol RouterViewWrapper: View {
    var hashValue: Int { get }
}

