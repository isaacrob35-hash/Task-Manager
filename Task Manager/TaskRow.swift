//
//  TaskRow.swift
//  Task Manager
//
//  Created by Isaac Luke on 9/18/26.
//

import SwiftUI

struct TaskRow: View {
    let task: TodoTask

    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
            Text(task.title)
                .strikethrough(task.isCompleted)
            Spacer()
        }
        .padding()
        .background(.white)
        .cornerRadius(12)
        .opacity(task.isCompleted ? 0.5 : 1)
        .shadow(radius: 5)
    }
}

#Preview {
    TaskRow(task: TodoTask(title: "Read a chapter", isCompleted: false))
}
