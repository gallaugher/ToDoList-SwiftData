// File: ToDoListApp.swift Project: ToDoList
// Created by: Prof. John Gallaugher on 9/5/24
// YouTube.com/profgallaugher  -  threads.net/john.gallaugher

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .modelContainer(for: ToDo.self)
        }
    }
    
    // Will allow us to find where our simulator datea is saved:
    init() {
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
