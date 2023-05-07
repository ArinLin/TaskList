//
//  TaskListAppApp.swift
//  TaskListApp
//
//  Created by Arina on 06.05.2023.
//

import SwiftUI

@main
struct TaskListAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(taskStrore: TaskStore())
        }
    }
}
