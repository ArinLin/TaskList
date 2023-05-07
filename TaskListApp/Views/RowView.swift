//
//  RowView.swift
//  TaskListApp
//
//  Created by Arina on 07.05.2023.
//

import SwiftUI

struct RowView: View {
    @Binding var task: Task
    var body: some View {
        NavigationLink(destination: TaskEditingView(tasl: $task)) {
            Text(task.name)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant(Task(name: "To Do")))
    }
}
