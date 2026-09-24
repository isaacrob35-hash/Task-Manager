//
//  ContentView.swift
//  Task Manager
//
//  Created by Isaac Luke on 9/18/26.
//

import SwiftUI

struct ContentView: View {
    let viewModel = TaskViewModel()

    var body: some View {
        ZStack {
            background
            VStack {
                header
                taskList
                buttons
            }
            .padding()
        }
    }

    private var background: some View {
        LinearGradient(colors: [.blue, .black],
                       startPoint: .top,
                       endPoint: .bottom)
            .ignoresSafeArea()
    }

    private var header: some View {
        Text("\(viewModel.remainingCount()) tasks remaining")
            .font(.largeTitle)
            .bold()
            .foregroundStyle(.white)
    }

    private var taskList: some View {
        ScrollView {
            ForEach(viewModel.tasks) { task in
                TaskRow(task: task)
                    .onTapGesture {
                        viewModel.toggleTask(task)
                    }
            }
        }
    }

    private var buttons: some View {
        HStack {
            Button("Add Task") {
                viewModel.addTask(titled: "New Task")
            }
            Button("Clear Completed") {
                viewModel.clearCompleted()
            }
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
}
