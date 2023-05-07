//
//  Tasks.swift
//  TaskListApp
//
//  Created by Arina on 06.05.2023.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    
    var name: String
    var completed: Bool = false
}
