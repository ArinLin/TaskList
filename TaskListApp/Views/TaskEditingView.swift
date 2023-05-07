//
//  TaskEditingView.swift
//  TaskListApp
//
//  Created by Arina on 07.05.2023.
//

import SwiftUI

struct TaskEditingView: View {
    @Binding var tasl: Task
    var body: some View {
        Form {
            TextField("Name", text: $tasl.name)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(tasl: .constant(Task(name: "To Do")))
    }
}
