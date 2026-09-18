//
//  Model.swift
//  Task Manager
//
//  Created by Isaac Luke on 9/18/26.
//

import Foundation

struct TodoTask : Identifiable {
    let id: UUID = UUID()
    let title: String
    var isCompleted: Bool
}
