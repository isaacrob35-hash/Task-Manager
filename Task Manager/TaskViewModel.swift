//
//  TaskViewModel.swift
//  Task Manager
//
//  Created by Isaac Luke on 9/18/26.
//

import SwiftUI

@Observable
class TaskViewModel {
    var tasks: [TodoTask] = [
        TodoTask(title: "Read a chapter of a book", isCompleted: false),
        TodoTask(title: "Go for a walk", isCompleted: false),
        TodoTask(title: "Finish Swift lab", isCompleted: false),
        TodoTask(title: "Do laundry", isCompleted: true),
        TodoTask(title: "Call my mom", isCompleted: false)
    ]

    func addTask(titled title: String) {
        tasks.append(TodoTask(title: title, isCompleted: false))
    }

    func toggleTask(_ task: TodoTask) {
        for index in tasks.indices {
            if tasks[index].id == task.id {
                tasks[index].isCompleted.toggle()
            }
        }
    }

    func clearCompleted() {
        var kept: [TodoTask] = []
        for task in tasks {
            if !task.isCompleted {
                kept.append(task)
            }
        }
        tasks = kept
    }

    func remainingCount() -> Int {
        var count = 0
        for task in tasks {
            if !task.isCompleted {
                count += 1
            }
        }
        return count
    }
}
