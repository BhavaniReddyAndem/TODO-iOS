//
//  ToDoApp.swift
//  ToDo
//
//  Created by Bhavani Reddy Navure on 4/29/24.
//

import SwiftUI
import SwiftData

@main
struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
