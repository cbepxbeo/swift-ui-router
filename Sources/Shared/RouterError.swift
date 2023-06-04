/*

Project: SwiftUIRouter
File: RouterError.swift
Created by: Egor Boyko
Date: 03.06.2023

Status: #Complete | #Not decorated

*/


public enum RouterError<Tag: Hashable>: Error {
    case unknownTag(tag: Tag)
    case alreadyExistsTag(tag: Tag)
}
