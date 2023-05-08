//
//  RowView.swift
//  TaskListApp
//
//  Created by Arina on 07.05.2023.
//

import SwiftUI

struct RowView: View {
    @Binding var task: Task
    
    let checkmark = Image (systemName: "checkmark")
    
    var body: some View {
        NavigationLink(destination: TaskEditingView(tasl: $task)) {
            if task.completed {
                checkmark
            } else {
                checkmark.hidden()
            }
            Text(task.name)
                .strikethrough(task.completed)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant(Task(name: "To Do")))
    }
}
