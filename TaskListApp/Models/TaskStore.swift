//
//  TaskStore.swift
//  TaskListApp
//
//  Created by Arina on 06.05.2023.
//
import Combine

class TaskStore: ObservableObject {
    @Published var tasksArray = [
        Task(name: "Изучить основы swift"),
        Task(name: "Решить 2 задачи на leetcode"),
        Task(name: "Прочитать Грокаем алгоритмы"),
        Task(name: "Поискать вакансии ios разработчика"),
        Task(name: "Написать первую программу"),
        Task(name: "Участовать в челлендже leetcode"),
        Task(name: "Посмотреть собеседования на youtube"),
        Task(name: "Прочитать про многопоточность"),
        Task(name: "Изучить SwiftUI"),
        Task(name: "Изучить UIKit")
    ]
}
    
