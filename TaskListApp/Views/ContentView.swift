//
//  ContentView.swift
//  TaskListApp
//
//  Created by Arina on 06.05.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskStrore: TaskStore
    @State var modalIsPresented: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(taskStrore.tasksArray) { index1 in
                    RowView(task: self.$taskStrore.tasksArray[index1])
                }
                .onMove { sourceIndices, destinationIndex in
                    self.taskStrore.tasksArray.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
                }
                .onDelete { someIndexSet1 in
                    self.taskStrore.tasksArray.remove(atOffsets: someIndexSet1)
                }
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    Button(action: {self.modalIsPresented = true}) {
                        Image(systemName: "plus")
                    }
            )
        }
        .sheet(isPresented: $modalIsPresented) {
            NewTaskView(taskStore: self.taskStrore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStrore: TaskStore())
    }
}


